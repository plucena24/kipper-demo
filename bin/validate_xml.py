#!/usr/bin/python
#
# Validate XML
# Starting with very basic XML parsing

import sys

try:
    from lxml import etree
except ImportError:
    print("Failed to import etree. You need to install lxml")
    
try:
    tree = etree.parse(sys.argv[1])
except etree.XMLSyntaxError, e:
    print sys.argv[1], "Invalid XML: ", e
    sys.exit(1)

sys.exit(0)
