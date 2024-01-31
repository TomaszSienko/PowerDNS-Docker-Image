#!/bin/sh

mysql_install_db --user=mysql --datadir=/var/lib/mysql
# Start MySQL
mysqld_safe --user=mysql &

# Odczekaj na uruchomienie MySQL
sleep 10

# Inicjalizacja bazy danych
mysql -e "source /root/init.sql"

# Uruchom PowerDNS
pdns_server
