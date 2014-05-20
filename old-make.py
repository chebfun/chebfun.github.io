from _urubu import readers as urubu_readers
import dateutil.parser as dateparser
import os, shutil, re

# Traverse the Guide directory, moving chapters up a directory while renaming
# them to have a .md extension.
os.chdir(os.path.join("docs","guide"))
for imgdir, dirs, files in os.walk("./"):
    for htmlfile in files:
        if htmlfile.endswith('.html') and imgdir.endswith('img'):
            # At this point, we have something like this:
            #   imgdir     = [...]/docs/guide/img
            #   htmlfile   = guideX.html

            slug     = htmlfile[:-5]
            guidedir = os.path.abspath(os.path.join(imgdir, os.pardir))

            mdfile   = slug + '.md'
            mfile    = slug + '.m'

            # Relative path to the example's .html file (which is actually
            # formatted as MarkDown, but.)
            htmlfull = os.path.join(imgdir, htmlfile)
            mdfull   = os.path.join(guidedir, mdfile)

            # Copy the file to a .md file one directory up,
            # i.e. into  [...]/examples/CATEGORY/NAME.md.
            shutil.copyfile(htmlfull, mdfull)
os.chdir(os.path.join("..",".."))


# Traverse the Guide2 directory, moving chapters up a directory while renaming
# them to have a .md extension.
os.chdir(os.path.join("docs","guide2"))
for imgdir, dirs, files in os.walk("./"):
    for htmlfile in files:
        if htmlfile.endswith('.html') and imgdir.endswith('img'):
            # At this point, we have something like this:
            #   imgdir     = [...]/docs/guide2/img
            #   htmlfile   = guideX.html

            slug     = htmlfile[:-5]
            guidedir = os.path.abspath(os.path.join(imgdir, os.pardir))

            mdfile   = slug + '.md'
            mfile    = slug + '.m'

            # Relative path to the example's .html file (which is actually
            # formatted as MarkDown, but.)
            htmlfull = os.path.join(imgdir, htmlfile)
            mdfull   = os.path.join(guidedir, mdfile)

            # Copy the file to a .md file one directory up,
            # i.e. into  [...]/examples/CATEGORY/NAME.md.
            shutil.copyfile(htmlfull, mdfull)
os.chdir(os.path.join("..",".."))


# Traverse the examples directory, finding any examples, whose filenames are
# of the form                 ../examples/CATEGORY/img/NAME.html
# then copy each to           ../examples/CATEGORY/NAME.md
os.chdir("examples")
tag_pattern = re.compile("#([^,\]\n]+)")
examples = []
for imgdir, dirs, files in os.walk("./"):
    for htmlfile in files:
        if htmlfile.endswith('.html') and imgdir.endswith('img'):
            # At this point, we have something like this:
            #   imgdir     = [...]/examples/CATEGORY/img
            #   htmlfile   = NAME.html
            # and below we'll extract `catdir` and `slug`, which are
            #   catdir     = [...]/examples/CATEGORY
            #   cat        = CATEGORY
            #   slug       = NAME

            example    = {};

            catdir   = os.path.abspath(os.path.join(imgdir, os.pardir))
            cat      = os.path.split(catdir)[-1]
            slug     = htmlfile[:-5]

            mdfile   = slug + '.md'
            mfile    = slug + '.m'

            # Relative path to the example's .html file (which is actually
            # formatted as MarkDown, but.)
            htmlfull = os.path.join(imgdir, htmlfile)
            mdfull   = os.path.join(catdir, mdfile)

            # Copy the file to a .md file one directory up,
            # i.e. into  [...]/examples/CATEGORY/NAME.md.
            shutil.copyfile(htmlfull, mdfull)

            # Use urubu's own YAML function to extract the frontmatter data.
            # The dict will include fields 'layout', 'title', 'authordate',
            # and 'meta'.
            example = urubu_readers.get_yamlfm(mdfull)

            # The 'meta' field includes both the tags and the example location.
            # We need to parse them out.
            example['tags'] = re.findall(tag_pattern, example['meta'])
            example['tags'] = ', '.join(['#%s'%(s) for s in example['tags']])

            # Add the path to the data, and the m-file path
            example['href']  = os.path.join(cat, htmlfile)
            example['mhref'] = os.path.join(cat, mfile)

            # TODO: This should test to make sure the image exists.
            example['img'] = os.path.join(imgdir, slug + '_01.png')

            # Python's dateutils has a magic "fuzzy" date function that
            # parses arbitrary text and turns up a date object. If the day
            # is not given, as in some of the examples, it makes one up.
            dateobj = dateparser.parse(example['authordate'],fuzzy=True)
            example['date'] = dateobj.strftime("%Y-%m-%d")

            examples += [example]

os.chdir("..")

# Sort the examples by date, since this is how we want them to appear in the
# gallery.
examples = sorted(examples, key=lambda e: e['date'], reverse=True)
examples = examples[:10]

# We are going to build a little gallery here.
gallery_html = ''
div = "<div class='row'><a href='{href}'>" \
    + "<div class='col-md-12 well gallery-item {side}'>" \
    + "<img src='{img}' />" \
    + "<h3>{title}</h3>" \
    + "<h4>{authordate}</h4>" \
    + "<h4 class='tags'>{tags}</h4>" \
    + "</div></a></div>"

# For each published example.
for (i,example) in enumerate(examples):
    if i % 2 == 0:
        example['side'] = 'left'
    else:
        example['side'] = 'right'

    gallery_html += div.format(**example)

fh = open('_layouts/autogen-examplesgallery.html', 'w+')
fh.write(gallery_html)
fh.close()


# Now go ahead and build the project.
from _urubu import project as urubu_project
urubu_project.build()
