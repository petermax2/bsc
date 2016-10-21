# Texlive installation
# (for my bachelor thesis)
# 
FROM		ubuntu:xenial
MAINTAINER	Peter Nirschl <peter.nirschl@me.com>

LABEL Description = "This image contains a complete texlive installation and is used for creating the PDFs of my bachelor thesis"

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y git cmake vim pandoc unzip texlive-full

VOLUME ["/data/"]
CMD ["/bin/bash"]
