#!/bin/bash
CONTAINER="texlive"

sudo docker start $CONTAINER
sudo docker exec $CONTAINER rm -rf /thesis
sudo docker cp "$PWD" "$CONTAINER:/thesis"
sudo docker exec -t -i -w "/thesis" $CONTAINER ./build-all.sh
sudo docker cp "$CONTAINER:/thesis/thesis.pdf" "$PWD/thesis.pdf"
sudo docker stop $CONTAINER
