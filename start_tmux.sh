#!/bin/bash

# Start a new detached tmux session named GFG_Session
tmux new-session -d -s django
tmux send-keys -t django:1 'cd ~/pypro/blogEnv/websiteRoot/ && nvim'
#create a new window in the django session
tmux new-window -t django:2  
tmux send-keys -t django:2 'cd ~/pypro/blogEnv/ && source bin/activate && cd websiteRoot'
#tmux new-window -t django:2  'nvim ~/django_project/manuals/manualsEnv/websiteRoot/pages/templates/pages/page.html'
#tmux new-window -t django:3  'nvim ~/django_project/manuals/manualsEnv/websiteRoot/pages/models.py'
#tmux new-window -t django:4  'nvim ~/django_project/manuals/manualsEnv/websiteRoot/pages/views.py'

#tmux new-window -t django:5 
#tmux new-window -t django:6
#tmux send-keys -t django:5 'source ~/django_project/manuals/manualsEnv/bin/activate && cd ~/django_project/manuals/manualsEnv/websiteRoot/ && python manage.py shell < prueba.py'
#tmux send-keys -t django:6 'cd ~/django_project/manuals/manualsEnv/websiteRoot/ && nvim prueba.py'
#tmux new-window -t django: 'cd ~/django_project/manuals/manualsEnv/websiteRoot/'

# Attach to the tmux session
tmux attach-session -t django
