#!/bin/bash
cd
user=$(whoami)
projectName="djangoBlog"
a="/var/www/${user}_pythonanywhere_com_wsgi.py"
wsgiPath="$(echo $a | tr '[A-Z]' '[a-z]')"
settingsPath="websiteRoot/website/settings.py"
websiteLink="${user}.pythonanywhere.com"
wsgiContent=$"import os
import sys
#
## assuming your django settings file is at '/home/inforudn/mysite/mysite/settings.py'
## and your manage.py is is at '/home/inforudn/mysite/manage.py'
path = '/home/${user}/${projectName}/websiteRoot'
if path not in sys.path:
    sys.path.append(path)
#
os.environ['DJANGO_SETTINGS_MODULE'] = 'website.settings'
#
## then:
from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()"
touch $wsgiPath
echo "$wsgiContent" > $wsgiPath
#sed -i -e 's/"ALLOWED_HOSTS = []"/ALLOWED_HOSTS = ['$websiteLink]'/g' /tmp/file.txt
