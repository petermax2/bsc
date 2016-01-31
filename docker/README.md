# Docker Container #

If you want to isolate the Texlive installation from your system, you can use the docker container provided in this directory.
The build process might take some time, because the complete texlive installation is being downloaded and installed.
The final container size will be about **4.3 GB**.

## Build the container ##

Run the following command to build the container:

	docker build -t pnirschl/bsc .

While building the container Docker will download about **2 GB** of packages.

## Running the container ##

To start the container run the following command:

	docker run -i -t pnirschl/bsc


