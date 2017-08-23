FROM python:2.7

RUN apt-get update
# Install ffmpeg
RUN apt-get install -y -q libavformat-dev libavcodec-dev libavfilter-dev libswscale-dev libjpeg-dev libpng-dev \
    libtiff-dev libjasper-dev zlib1g-dev libopenexr-dev \
    libeigen3-dev libtbb-dev yasm nasm build-essential \
    wget cmake clang unzip software-properties-common && \
    add-apt-repository ppa:jonathonf/ffmpeg

# Install numpy
RUN pip install 'numpy==1.8.1'

# Install opencv
RUN wget 'https://github.com/opencv/opencv/archive/2.4.zip' -O opencv-2.4.zip \
    && unzip opencv-2.4.zip \
    && rm opencv-2.4.zip \
    && mkdir -p opencv-2.4/release \
    && cd opencv-2.4/release \
    && cmake -D CMAKE_BUILD_TYPE=RELEASE \
        -D CMAKE_INSTALL_PREFIX=/usr/local \
        -D BUILD_PYTHON_SUPPORT=ON \
        -D WITH_XINE=ON \
        -D BUILD_EXAMPLES=OFF \
        -D INSTALL_PYTHON_EXAMPLES=OFF \
        -D WITH_TBB=ON .. \
    && make -j4 && make install && cd / && rm -rf opencv-2.4 && \
    apk del libavformat-dev libavcodec-dev libavfilter-dev
    libtiff-dev libjasper-dev zlib1g-dev libopenexr-dev \
    libeigen3-dev libtbb-dev libswscale-dev libjpeg-dev libpng-dev \

# Import proper python deps
ENV PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages

# Create working directory
RUN mkdir /app

# Define working directory.
WORKDIR /app

# Define default command.
ENTRYPOINT ["bash"]
