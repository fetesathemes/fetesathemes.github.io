#!/bin/bash

find ./assets/images/pages -name "*.jpg" -type f -exec mozjpegtran -copy none -optimize -outfile {} {} \;
find ./assets/images/pages -name "*.JPG" -type f -exec mozjpegtran -copy none -optimize -outfile {} {} \;
find ./assets/images/pages -name "*.png" -type f -exec pngcrush -brute -ow {} \;
find ./assets/images/pages -name "*.PNG" -type f -exec pngcrush -brute -ow {} \;
