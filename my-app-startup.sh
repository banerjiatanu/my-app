#!/bin/bash
docker ps|grep my-app &> /dev/null
if [ $? -eq 0 ]
then
echo "app exists, need to remove"
docker stop my-app
docker rm -f my-app
echo "Starting my-app"
docker run -d -p 8080:8080 --name my-app atanubanerji/git_jen_doc_dep_new_app:1.0
else
echo "Starting my-app"
docker run -d -p 8080:8080 --name my-app atanubanerji/git_jen_doc_dep_new_app:1.0
fi

