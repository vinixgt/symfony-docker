#!/usr/bin/sh
echo "Installing vendors..."
#echo $(ls /var/www/html/)
echo $(/usr/local/bin/php composer.phar install)
echo $(/usr/local/bin/php /var/www/html/bin/vendors install)

ls -ltrha
echo "Checking Symfony installation..."
echo /usr/local/bin/php /var/www/html/app/check.php

echo "Checking Symfony installation again..."
/usr/local/bin/php /var/www/html/app/check.php