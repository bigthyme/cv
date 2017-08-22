## Docker Image for CS 6476

This repo contains a basic setup for Georgia Tech's CS 6476 class based on Fall 2017 requirements. I'm utilizing
Alpine in an effort to reduce the base image size for python (~384 MB).

#### Steps to install for OSX
```
# follow website steps
$ open https://store.docker.com/editions/community/docker-ce-desktop-mac
# proper installs should successfully output a verison
$ docker version
```

#### Steps to install for Windows
```
# follow website steps
$ open https://store.docker.com/editions/community/docker-ce-desktop-windows
# proper installs should successfully output a verison
$ docker version
```

#### How to run this particular image?
```
$ git clone git@github.com:bigthyme/cv.git
$ cd cv
$ docker build -t <image_name> <Dockerfile>
$ docker run -v  -it "$(pwd)":/app <image_name>
```
### Test Installation
```
# I've cloned the https://github.gatech.edu/omscs6476/ps00 repo into this one for testing purposes 
$ docker run -v  -it "$(pwd)":/app <image_name>  
# while in docker 
$ cd ps00 && python ps0.py
```
