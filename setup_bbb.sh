#!/bin/sh

# Install all necessary libraries
sudo apt install libgtk-3-dev libcanberra-gtk3-dev
sudo apt install libtiff-dev zlib1g-dev
sudo apt install libjpeg-dev libpng-dev
sudo apt install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev

# Extract the OpenCV file to the /opt directory
sudo tar xf opencv-4.0.1-armhf.tar.bz2 -C /opt
rm opencv-4.0.1-armhf.tar.bz2

# Copy pkgconfig file over to the pkgconfig directory
sudo cp opencv.pc /usr/lib/arm-linux-gnueabihf/pkgconfig

# Set .bashrc to setup library path on login
echo 'export LD_LIBRARY_PATH=/opt/opencv-4.1.0/lib:$LD_LIBRARY_PATH' >> ~/.bashrc
echo 'export PKG_CONFIG_PATH=/usr/lib/arm-linux-gnueabihf/pkgconfig:/usr/share/pkgconfig' >> ~/.bashrc
echo 'export PKG_CONFIG_LIBDIR=/usr/lib/arm-linux-gnueabihf/pkgconfig:/usr/share/pkgconfig' >> ~/.bashrc
source ~/.bashrc

# Refresh LD to avoid linker errors
sudo ldconfig

# Apt clear cache to free space
sudo apt clean
