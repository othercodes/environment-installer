#!/usr/bin/env bash
#
# References:
#    
#
echo -e "\n===== \e[1m\e[97mInstalling PHP Interpreter and Composer\e[0m ====="
echo "> Installing PHP Repositories"
sudo add-apt-repository ppa:ondrej/php
echo "> Installing PHP 7.4, 8.0, 8.1 and 8.2."
sudo apt install php7.4-{bcmath,bz2,cli,common,curl,dev,intl,json,mbstring,mysql,pgsql,readline,soap,sqlite3,xml,xmlrpc,xsl,xdebug,zip}
sudo apt install php{8.0,8.1,8.2}-{bcmath,bz2,cli,common,curl,dev,intl,mbstring,mysql,pgsql,readline,soap,sqlite3,xml,xmlrpc,xsl,xdebug,zip}
echo "> Installing Composer."
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer



