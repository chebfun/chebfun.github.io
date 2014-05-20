# chebsite.py
# Hrothgar, 20 May 2014
#
# This file contains the class that does most of the heavy lifting. The only
# method that should be called from an instance of the Chebsite class is
# .build(), which takes a boolean `isfullbuild` flag.

import os, shutil, fnmatch, re
import dateutil.parser as dateparser
import processors

class Chebsite:
    def __init__(self, template_dir='_templates', build_dir='_build', base_url=''):
        # Some configuration:
        self.template_dir = template_dir
        self.build_dir    = build_dir
        self.base_url     = base_url

        # FIXME: Sort out these paths. Some are absolute and some are relative.
        #        It's a mess and I repent.
        self.work_dir     = os.getcwd()
        self.template_dir = os.path.join(self.work_dir, self.template_dir)
        self.build_dir    = os.path.join(self.work_dir, self.build_dir)
        self.examples_dir = 'examples'

    def build(self):
        """ The main build function. Order of operations:
              1a. Copy working dirctory to build directory.
              1b. Rename the examples (they are PUBLISHed as .html files but need
                  a .md extension --- they also need to be moved to their parent
                  directory).
              2.  Load up the directory listing and read in all YAML from .md files.
              3.  Do any extra processing, e.g. creating the examples gallery.
              4.  Render the site via the jinja2 template engine.
        """
        #---------------------------------------------------------------------
        # First, copy the files over to the build directory, then rename and
        # move the PUBLISH'd Example & Guide files to have a proper .md
        # extension, then move to the build_dir.

        # A full build copies over the entire working directory.
        self.copy_to_build_dir()
        self.rename_examples_and_guide_chapters()
        os.chdir(self.build_dir)

        #---------------------------------------------------------------------
        # Next, do the processing.

        #---- i.
        # Load up directory listing and read in all YAML info
        self.load_tree()

        #---- ii.
        # Extra processing, e.g. creating the examples gallery.
        self.process_examples_info()      # Tags and author/date info
        self.create_examples_index()      # The template for the main gallery
        self.create_examples_subindexes() # Templates for category galleries
        self.create_homepage_examples()   # A few examples go on the homepage
        self.create_news_index()          # The index for the news page

        #---- iii.
        # Convert .md -> .html and do all templating via jinja2.
        self.render_site()

        #---- iv.
        # Move back into the work_dir.
        os.chdir(self.work_dir)

    def copy_to_build_dir(self):
        """ Copy the entire work directory (excluding templates and hidden files)
            to the build directory.
        """
        # Filetypes not to copy to _build directory.
        ignore = shutil.ignore_patterns('.*', '_*')

        # First remove any existing build files.
        if os.path.isdir(self.build_dir):
            shutil.rmtree(self.build_dir)

        # Move everything over to the build_dir.
        shutil.copytree(self.work_dir, self.build_dir, ignore=ignore)

    def rename_examples_and_guide_chapters(self):
        """ Copies each example from a path like
                .../examples/CATEGORY/img/NAME.html   (PUBLISHed by MATLAB)
            to the path
                .../examples/CATEGORY/NAME.md         (Same content, copied)
            and similar for Guide chapters, which begin at
                .../docs/guide/img/guideN.html
            or
                .../docs/guide2/img/guideN.html
        """
        for dirpath, dirnames, filenames in os.walk(self.build_dir):
            for filename in filenames:
                if filename.endswith('.html') and dirpath.endswith('img'):
                    # At this point, we have something like this:
                    #   dirpath    = [...]/examples/CATEGORY/img
                    #   filename   = NAME.html

                    catdir = os.path.split(dirpath)[0]  # e.g. .../examples/approx
                    slug   = filename[:-5]              # e.g. 'ChebCoeffs'

                    # Relative paths to the input and output.
                    htmlfull = os.path.join(dirpath, slug + '.html')
                    mdfull   = os.path.join(catdir,  slug + '.md')

                    # Move the file.
                    shutil.copyfile(htmlfull, mdfull)

    def load_tree(self):
        """ Return a list of dicts, each representing a .md file in the tree.
        """
        tree = []
        for dirpath, dirnames, filenames in os.walk(self.build_dir):
            if '_templates' in dirnames:
                dirnames.remove('_templates')

            if '.git' in dirnames:
                dirnames.remove('.git')

            for filename in filenames:
                if filename.endswith('.md'):
                    fullpath      = os.path.join(dirpath,filename)
                    f             = processors.get_yaml_frontmatter(fullpath)
                    f['fullpath'] = fullpath
                    f['slug']     = filename[:-3]
                    f['path']     = os.path.relpath(dirpath, self.build_dir)
                    if f['path'] == '.':
                        f['path'] = ''

                    f['href']     = os.path.join(f['path'], f['slug'] + '.html')
                    f['mdhref']   = os.path.join(f['path'], f['slug'] + '.md')
                    f['base_url'] = self.base_url
                    tree         += [f]
        self.tree = tree

    def process_examples_info(self):
        """ Compute a few extra variables needed --- e.g. parse out the tags and date.
        """
        # Regex pattern for hashtags.
        tag_pattern = re.compile("#([^,\]\n]+)")

        for fileobj in self.tree:
            # Examples are the only .md files that have a 'meta' field, so we can
            # locate them that way.
            if 'meta' in fileobj:
                # The 'meta' field includes both the tags and the example location.
                # We need to parse them out.
                fileobj['tags'] = re.findall(tag_pattern, fileobj['meta'])
                fileobj['tags'] = ', '.join(['#%s'%(s) for s in fileobj['tags']])

                # This is the category, e.g. 'approx'
                fileobj['cat']  = os.path.split(fileobj['path'])[:-1]

                # FIXME: This should test to make sure the image exists.
                fileobj['img'] = os.path.join(fileobj['path'], 'img',
                                              fileobj['slug'] + '_01.png')

                # Python's dateutils has a magic "fuzzy" date function that
                # parses arbitrary text and turns up a date object. If the day
                # is not given, as in some of the examples, it makes one up.
                dateobj = dateparser.parse(fileobj['authordate'],fuzzy=True)
                fileobj['date'] = dateobj.strftime("%Y-%m-%d")

    def create_examples_index(self):
        """ This creates the examples gallery. Probably should be done fully with
            jinja2 template engine, but this works, too.
        """
        # Get a list of all examples.
        examples = [f for f in self.tree if 'meta' in f]

        # Sort the examples by date, since this is how we want them to appear
        # in the gallery. And let's only take the first, say, ten of them.
        examples = sorted(examples, key=lambda e: e['date'], reverse=True)
        examples = examples[:10]

        # We are going to build a little gallery here.
        gallery_html = ''
        div = """<div class='row'><a href='{base_url}/{href}'>
                 <div class='col-md-12 well gallery-item {side}'>
                 <img src='{base_url}/{img}' />
                 <h3>{title}</h3>
                 <h4>{authordate}</h4>
                 <h4 class='tags'>{tags}</h4>
                 </div></a></div>"""

        # For each published example.
        for (i,example) in enumerate(examples):
            if i % 2 == 0:
                example['side'] = 'left'
            else:
                example['side'] = 'right'

            gallery_html += div.format(**example)

        fh = open(os.path.join(self.template_dir, 'autogen-examplesgallery.html'), 'w+')
        fh.write(gallery_html)
        fh.close()

    def create_examples_subindexes(self):
        """ Saves the dict entry 'items' to the nodes of self.tree corresponding to
            category indexes of the examples, e.g. .../examples/approx/index.md.
        """
        # Here we need only assign the 'items' field to the relevant nodes of
        # the tree.
        for f in self.tree:
            parent = os.path.split(f['path'])[0]
            if f['slug'] == 'index' and parent == 'examples':
                # Find all examples in this category.
                eggs = [eg for eg in self.tree if eg['path'] == f['path'] \
                                              and eg['slug'] != 'index']
                f['items'] = eggs

    def create_news_index(self):
        """
        """
        pass

    def create_homepage_examples(self):
        """
        """
        pass

    def render_site(self):
        """ Converts Markdown to HTML and then renders templates with jinja2.
        """
        p = processors.ContentProcessor(fileinfo=self.tree,
                                        template_dir=self.template_dir,
                                        build_dir=self.build_dir)
        p.convert_markdown()
        p.render_templates()
