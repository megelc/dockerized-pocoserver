# dockerized-pocoserver
Poco C++ webserver build and run in a Ubuntu 18.04 Docker container using Conan C++ package manager (https://conan.io).

## Build and run locally
> docker build . -t pocoserver:1.0

> docker run --name pocoserver pocoserver:1.0

Now go ahead using your favorite browser and check out the IP address of the container, e.g.: http://172.17.0.2:8080/

You can find the IP address like this:
> $ docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' pocoserver


## Build and Run on GCP
You can also test the image directly on 'Google Cloud Run'

[![Run on Google Cloud](https://storage.googleapis.com/cloudrun/button.svg)](https://console.cloud.google.com/cloudshell/editor?shellonly=true&cloudshell_image=gcr.io/cloudrun/button&cloudshell_git_repo=https://github.com/megelc/dockerized-pocoserver)
