#!/usr/bin/python
from datetime import datetime
from lxml import etree
import getpass

def replace_theme(theme, user):
    filename = '/home/{}/.gconf/apps/gnome-terminal/global/%gconf.xml'.format(user)
    xmlfile = etree.parse(filename)
    xmlfile.xpath('.//stringvalue')[0].text = theme
    with open(filename, 'wb') as writable:
        newxml = etree.tostring(xmlfile, pretty_print=True)
        writable.write(newxml)

def run_replacement():
    hour = datetime.now().hour
    user = getpass.getuser()
    if hour > 17 or hour < 9:
        replace_theme('Profile1', user)
    else:
        replace_theme('Profile0', user)

def main():
    run_replacement()

if __name__ == '__main__':
    main()
