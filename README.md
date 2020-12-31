# SkyChart

This is a skychart and some functions to look at sky images using a raspberry pi hq camera.  It is very much a work in progress and nowhere close to release quality.

To install clone this repository:
git clone https://github.com/granolamatt/SkyChart.git
cd SkyChart

Then build the docker image:
docker build -t skychart-jupyter:latest .

Then use the docker-compose to start the image:
docker-compose up -d

You can then hit your computer ip to see the Sky Chart:
http://yourip:11100/tree/work/skyfieldtest.ipynb

The login token you can see by running docker-compose logs
