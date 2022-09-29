#!/bin/bash

/board_game_voting/docker/python/wait-for-it.sh db:3306 -- python /board_game_voting/manage.py migrate
gunicorn board_game_voting.wsgi:application --bind 0.0.0.0:8000