# Texlive installation
# (for my bachelor thesis)
# 
FROM		fedora:latest
MAINTAINER	Peter Nirschl <peter.nirschl@me.com>

LABEL Description = "This image contains a complete texlive installation and is used for creating the PDFs of my bachelor thesis"

RUN dnf upgrade -y
RUN dnf install -y git cmake vim pandoc unzip texlive-scheme-full

VOLUME ["/data/"]

CMD ["/bin/bash"]
