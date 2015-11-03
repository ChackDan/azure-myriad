#!/bin/bash

while ps aux | grep -v grep | grep "apt-get" > /dev/null; do
    sleep 2
done

apt-get -y update

# install Apache and PHP
apt-get -y install apache2 php5

# write some PHP
echo \<center\>\<h1\>My Demo App\</h1\>\<br/\>\</center\> > /var/www/html/phpinfo.php
echo \<\?php gethostname\(\)\; \?\> >> /var/www/html/phpinfo.php
echo \<\?php phpinfo\(\)\; \?\> >> /var/www/html/phpinfo.php

# restart Apache
apachectl restart

