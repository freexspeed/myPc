sudo chown -R _mysql /usr/local/var/mysql
sudo chmod -R o+rwx /usr/local/var/mysql
sudo launchctl start /Library/LaunchDaemons/mysql.plist 

mysql -uroot -e "create user 'admin'@'%' identified by '12345678';"
mysql -uroot -e "GRANT ALL ON *.* TO 'admin'@'%' WITH GRANT OPTION;" 
mysql -uroot -e "ALTER USER 'admin'@'%' PASSWORD EXPIRE NEVER;" 
