#!/bin/bash
echo 'path'
read path_var
echo 'file name'
read filename_var
echo "The path to the file $(ls -lah $path_var/$filename_var)"
# cp /var/www/html/about-us/wp-content/themes/blueelephant/header.php header.php-bkp
# ls -lah
# sudo chmod --reference=/var/www/html/about-us/wp-content/themes/blueelephant/header.php header.php; sudo chown --reference=/var/www/html/about-us/wp-content/themes/blueelephant/header.php header.php
# ls -lah
# sudo mv header.php /var/www/html/about-us/wp-content/themes/blueelephant/
# ls -lah /var/www/html/about-us/wp-content/themes/blueelephant/header.php