
from __future__ import print_function
import os

def serve():
    """HTTP server straight from the docs."""
    # allow running this from the top level
    if os.path.isdir('_build'):
        os.chdir('_build')
    import SimpleHTTPServer
    import SocketServer
    # local use, address reuse should be OK
    SocketServer.TCPServer.allow_reuse_address = True
    PORT = 8000
    Handler = SimpleHTTPServer.SimpleHTTPRequestHandler
    httpd = SocketServer.TCPServer(('', PORT), Handler)
    print("Serving at port {}".format(PORT))
    httpd.serve_forever()

serve()
