# moviepy Docker File
#
# It's moviepy in a container!
#
# VERSION  0.0.0
from       ubuntu:14.04
maintainer Casey Bisson "casey.bisson@gmail.com"

#
# update apt
#
RUN apt-get update -q

#
# base dependencies
#
RUN apt-get install -yq \
    curl \
    python-dev \
    python-pip \
    pkg-config \
    imagemagick \
    ipython \
    ipython-notebook \
    python-numpy \
    python-scipy \
    python-matplotlib \
    python-pandas \
    python-sympy \
    python-nose \
    libopencv-dev

#
# moviepy, and more dependencies
#
RUN pip install \
    setuptools \
    ez_setup \
    pillow \
    matplotlib \
    networkx \
    scikit-image \
    imageio \
    youtube-dl \
    moviepy
