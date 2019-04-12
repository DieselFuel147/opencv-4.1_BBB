# Precompiled OpenCV 4.1.0 armhfs binaries
This repository contains OpenCV binaries that have been compiled to run on the BeagleBoneBlack through GCC v6.7

## Prerequisites
1. Debian 9.5 Installed on beaglebone (or any stretch armhf distro) [Available Here](https://debian.beagleboard.org/images/bone-debian-9.5-iot-armhf-2018-10-07-4gb.img.xz)
2. Free space in excess of 50mb

## Installation instructions
1. Clone the repository into the home directory
* git clone <this repository>
* cd opencv4.1bbb
2. Run the autoconfigure sh script
* ./setup_bbb.sh

Opencv 4.1.0 is installed into the */opt/opencv-4.1.0* directory.
