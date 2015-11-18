##########################################################################################
# ClassicDriver Base Docker image with NodeJs
##########################################################################################
FROM classicdriver/debian-wheezy-base

MAINTAINER Team Nitrous <nitrous@classicdriver.com>

#############################################
# Node installation
#############################################
ENV NODE 5.x

# Get setup file and install NodeJs and Build-Essential(optional)
RUN curl --silent --location https://deb.nodesource.com/setup_${NODE} | bash - \
    && apt-get update \
    && apt-get install -y \
      build-essential \
      nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Move into the home directory
WORKDIR /
