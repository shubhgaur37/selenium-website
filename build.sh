#!/bin/sh

sudo docker build ./mysql/ -t db
sudo docker run --platform linux/amd64 -it -d -p 3306:3306 --name mysql db

sudo docker build ./website/ -t web
sudo docker run --platform linux/amd64 -it -d -p 3001:80 --link mysql:db web
