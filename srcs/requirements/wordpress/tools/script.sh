#!/bin/bash
echo "listen = 0.0.0.0:9000" >> /etc/php/7.3/fpm/pool.d/www.conf
cd /tmp && curl -LO https://wordpress.org/latest.tar.gz \
&& tar xzvf latest.tar.gz
cp /wp-config.php /var/www/html/
cp -a /tmp/wordpress/* /var/www/html/
chown -R www-data:www-data /var/www/html
service php7.3-fpm start
service php7.3-fpm stop