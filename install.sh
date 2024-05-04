#!/bin/bash
user=$(whoami)
projectName="djBlog"
python -m venv ../$projectName
source bin/activate
pip install django
pip install pillow
django-admin startproject website
cp -r websiteRoot/* website/                                                                                           
mv websiteRoot websiteRoot_bk
mv website websiteRoot
cd websiteRoot
python manage.py makemigrations blog
python manage.py migrate
