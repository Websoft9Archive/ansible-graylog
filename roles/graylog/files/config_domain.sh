#!/bin/bash
read -p "Have completed domain name resolution? [ y/n ]:" dnsre
if [ $dnsre = "n" ]; then echo -e "\nYou must complete your domain name resolution first."&&exit; fi

while true;
do
  read -p "Input You Domain:" domain
  if [  ! -n $domain ];then
          rm -rf /etc/graylog/graylog.html
          rm -rf /etc/nginx/conf.d/default.conf
          mv /etc/nginx/conf.d/default*[@]* /etc/nginx/conf.d/default.conf &>> /dev/null
          sed -i "s/www.example.com/$domain/" /etc/nginx/conf.d/default.conf
          systemctl restart nginx
          echo "Biding domain name successfully!"
          break
  fi
echo  "Your input is null, try it again"
done