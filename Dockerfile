FROM ubuntu:20.04
MAINTAINER Tru Huynh <tru@pasteur.fr>

# update the OS and the required packages listed on
# https://wiki.lineageos.org/devices/bacon/build and
# https://wiki.lineageos.org/extracting_blobs_from_zips (python+brotli)
RUN 	apt-get update && \
        DEBIAN_FRONTEND=noninteractive apt-get -y install \
		bash \
		bc \
		bison \
		brotli \
		build-essential \
		ccache \
		curl \
		flex \
		g++-multilib \
		gcc-multilib \
		git \
		gnupg \
		gperf \
		imagemagick \
		lib32ncurses5-dev \
		lib32readline-dev \
		lib32z1-dev \
		libelf-dev \
		liblz4-tool \
		libncurses5 \
		libncurses5-dev \
		libsdl1.2-dev \
		libssl-dev \
		libxml2 \
		libxml2-utils \
		lzop \
		pngcrush \
		python-is-python3 \
		python3 \
		rsync \
		schedtool \
		squashfs-tools \
		unzip \
		xsltproc \
		zip \
		zlib1g-dev && \
        DEBIAN_FRONTEND=noninteractive apt-get -y upgrade && \
        DEBIAN_FRONTEND=noninteractive apt-get -y autoremove && \
        DEBIAN_FRONTEND=noninteractive apt-get -y clean autoclean && \
	date +"%Y-%m-%d-%H%M" > /last_update

#
