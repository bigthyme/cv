## Docker Image for CS 6476

TL;DR - This includes the following:
Python 2.7, NumPy 1.11+, SciPy 0.17+ and OpenCV 2.4.13

- Disclaimer: b/c we're running matplotlib in docker, `.show` doesn't work as expected.
I've included an example_plot file to demostrate a workaround.

This repo contains the required python environment for Georgia Tech's CS 6476 [Fall 2017 requirements](https://github.gatech.edu/omscs6476/ps00). The total image size
for this docker container is `~1.17 GB` but hopefully smaller after a few more iterations.

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
$ git clone https://github.com/bigthyme/cv.git
$ cd cv
$ docker build -t <image_name> <Dockerfile>
$ docker run -v -it "$(pwd)":/app <image_name>
```
#### Test Installation
```
# from your host machine, git clone https://github.gatech.edu/omscs6476/ps00 into this repo
$ docker run -v -it "$(pwd)":/app <image_name>
# while in docker
$ cd ps00 && python ps0.py
> hopefully passes...
```
#### License
MIT
