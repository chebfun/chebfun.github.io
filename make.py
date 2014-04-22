
from _urubu import readers as urubu_readers
import dateutil.parser as dateparser
import os

# Traverse the examples directory and gather all non-index MarkDown files.
os.chdir("examples")
examples = []
for root, dirs, files in os.walk("./"):
    for file in files:
        if file.endswith('.md') and file != 'index.md':
            example = {};

            # Relative path to the example
            path = os.path.join(root, file)

            # Use urubu's own YAML function to extract the frontmatter data.
            # The dict will include fields 'layout', 'title', 'tags',
            # 'authordate', and 'example'.
            example = urubu_readers.get_yamlfm(path)

            # Add the path to the data.
            example['path'] = path[:-2] + 'html'

            # FIXME: This should test to make sure the image exists.
            example['img'] = os.path.join(root, 'img', file[:-3] + '_01.png')

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


# We are going to build a little gallery here.
gallery_html = ''
div = "<div class='row gallery-item {side}'><div class='col-md-12'>" \
    + "<img src='{img}' />" \
    + "<h3><a href='{path}'>{title}</a></h3>" \
    + "<h4>{authordate}</h4>" \
    + "<h4 class='tags'>[{tags}]</h4>" \
    + "</div></div>"

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
