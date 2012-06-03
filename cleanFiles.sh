#!/bin/bash
#Shiva projects automatically createa set of default textures and thumbnails
#this script deletes them if you're cygwinning, this will fail on mac because mac 
#find utility hasn't been udpated since 1976.

#Delete the default textures
find | grep Default* | xargs rm

#delete the Thumbnails directory
find -type d -name Thumbnails | xargs rm -rf

#delete the Build directory
find -type d -name Build | xargs rm -rf