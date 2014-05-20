# BUILD.py
# Hrothgar, 20 May 2014
#
# This is the main function for building the website. Most of the details
# reside in `chebsite.py` --- see the comments there for a fuller description.
# The entire code is a rather small ~300 lines.
#
# To build the website, be sure you're in whatever directory this file is in,
# and then type the following at the terminal:
#   $ python BUILD.py

import sys
from chebsite import Chebsite
# from server import serve

# Some small configurations. Actually, don't touch these.
config = {
    'build_dir':    '_build',
    'template_dir': '_templates',
    'base_url':     ''
}

# Do the do.
Site = Chebsite(**config)
Site.build()

# # Serve if requested.
# if '--serve' in sys.argv:
#     serve()
