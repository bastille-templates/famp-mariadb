SECRET=$(uuidgen | tr -d '-' | head -c64)
sed -i -e "s|\$cfg\['blowfish_secret'\] = .*;|\$cfg['blowfish_secret'] = \\\sodium_hex2bin('$SECRET');|" /usr/local/www/phpMyAdmin/config.inc.php

echo 'Verify .....'
grep "blowfish_secret" /usr/local/www/phpMyAdmin/config.inc.php

#pkg install -y expect
#DB_ROOT_PASSWORD=$(openssl rand -base64 32) && export DB_ROOT_PASSWORD && echo $DB_ROOT_PASSWORD > /root/db_root_pwd.txt

#SECURE_MYSQL=$(expect -c "
#set timeout 10
#spawn mysql_secure_installation
#expect \"Switch to unix_socket authentication\"
#send \"n\r\"
#expect \"Change the root password?\"
#send \"n\r\"
#expect \"Remove anonymous users?\"
#send \"y\r\"
#expect \"Disallow root login remotely?\"
#send \"y\r\"
#expect \"Remove test database and access to it?\"
#send \"y\r\"
#expect \"Reload privilege tables now?\"
#send \"y\r\"
#expect eof
#")

#echo "$SECURE_MYSQL"

# Display the location of the generated root password for MySQL
echo "Your DB_ROOT_PASSWORD is written on this file /root/db_root_pwd.txt"

# No one but root can read this file. Read only permission.
chmod 400 /root/db_root_pwd.txt