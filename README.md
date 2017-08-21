## Docker Image for CS 6476

This repo contains a basic setup for Georgia Tech's CS 6476 class based on Fall 2017 requirements. I'm utilizing
Alpine in an effort to reduce the base image size for python.

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
$ docker run -v "$(pwd)":/cv <image_name> <command>
```

