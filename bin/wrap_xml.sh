#!/bin/bash
#
# Wrap the assembled XML file within the configuration tag
# The only argument to this script is the xml file path

echo '<configuration>' > $1.tmp
cat $1 >> $1.tmp
echo '</configuration>' >> $1.tmp
mv $1.tmp $1

