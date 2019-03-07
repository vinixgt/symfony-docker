#!/usr/bin/sh
echo 'Starting apache'
#rc-service apache start
/usr/local/apache2/bin/apachectl -DFOREGROUND;
echo "Adding permissions to app/cache and app/logs directories..."
HTTPDUSER=`ps aux | grep -E '[a]pache|[h]ttpd|[_]www|[w]ww-data|[n]ginx' | grep -v root | head -1 | cut -d\  -f1`
#HTTPDUSER=apache
echo 'user: ' $HTTPDUSER

setfacl -R -m u:"$HTTPDUSER":rwX -m u:`whoami`:rwX /var/www/html/app/cache /var/www/html/app/logs
setfacl -dR -m u:"$HTTPDUSER":rwX -m u:`whoami`:rwX /var/www/html/app/cache /var/www/html/app/logs

cd /var/www/html/
ls -lthra