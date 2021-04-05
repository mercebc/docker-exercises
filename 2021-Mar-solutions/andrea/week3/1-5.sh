#! /bin/bash

# In a previous exercise we used devopsdockeruh/simple-web-service:ubuntu
# Here is the same application but instead of ubuntu is using alpine: devopsdockeruh/simple-web-service:alpine

# Pull both images and compare the image sizes

docker images | grep dockeruh
# devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   3 weeks ago   83MB
# devopsdockeruh/simple-web-service   alpine    fd312adc88e0   3 weeks ago   15.7MB

# Go inside the alpine container and make sure the secret message functionality is the same. Alpine version doesn’t have bash but it has sh

docker run -d --rm --name=mycontainer devopsdockeruh/simple-web-service:alpine
docker exec -it mycontainer sh -c "tail -f ./text.log" ## (needs a manual interrupt)
