1. 该软件需要绑定域名使用；
2. 默认登录密码是：admin/admin123
3. 镜像使用时，需要先修改 ```/etc/graylog/server/server.conf```文件中的 ```# web_endpoint_uri = http://www.example.com:9000/api/``` : 去掉 # 号，
   将 ```http://www.example.com``` 改为自己的域名（保留http://  其他不变）
4. 修改 ```/etc/nginx/sites-available/default``` 文件中的域名： ```server_name www.example.com;``` 改为自己的域名；
5. 修改后重启服务：```systemctl restart graylog-server nginx```
6. 服务器内存需要4G以上