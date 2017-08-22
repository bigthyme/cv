FROM python:2.7.11-alpine

# Install deps.
ADD ./boostrap.sh /tmp/
RUN echo "@edge-testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && echo "@edge-community http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN apk --no-cache --update-cache add cmake bash gcc gfortran python python-dev py-pip build-base wget freetype-dev libpng-dev openblas-dev
RUN pip install 'numpy==1.8.1'

# Create working directory
RUN mkdir /app

# Define working directory.
WORKDIR /app
RUN chmod +x /tmp/boostrap.sh
RUN /tmp/boostrap.sh

# Define default command.
ENTRYPOINT ["bash"]
