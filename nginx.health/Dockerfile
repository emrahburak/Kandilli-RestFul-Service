 # syntax = docker/dockerfile:1.0-experimental

FROM nginx:latest AS app

RUN apt-get -y update \
	&& apt-get -y install --no-install-recommends \
	curl \
	# && apt-get install -y --no-install-recommends \
	# apt-utils \
	&& rm -rf /var/lib/apt/lists/*


