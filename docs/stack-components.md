# Parameters

The Graylog deployment package contains a sequence software (referred to as "components") required for Graylog to run. The important information such as the component name, installation directory path, configuration file path, port, version, etc. are listed below.

## Path

This solution use Docker to deploy all service, you can run the command `docker ps` to list them  

```
CONTAINER ID   IMAGE                                                      COMMAND                  CREATED         STATUS                   PORTS                                                                                                                                                                                                                           NAMES
dffc0d802a26   graylog/graylog:4.1                                        "/usr/bin/tini -- wa…"   2 minutes ago   Up 2 minutes (healthy)   0.0.0.0:1514->1514/tcp, 0.0.0.0:1514->1514/udp, :::1514->1514/tcp, :::1514->1514/udp, 0.0.0.0:12201->12201/tcp, 0.0.0.0:12201->12201/udp, :::12201->12201/tcp, :::12201->12201/udp, 0.0.0.0:9001->9000/tcp, :::9001->9000/tcp   graylog
7c0a42a383c3   mongo:4.2                                                  "docker-entrypoint.s…"   2 minutes ago   Up 2 minutes             27017/tcp                                                                                                                                                                                                                       graylog-mongo
f4cd00fc5f58   docker.elastic.co/elasticsearch/elasticsearch-oss:7.10.2   "/tini -- /usr/local…"   2 minutes ago   Up 2 minutes             9200/tcp, 9300/tcp                                                                                                                                                                                                              graylog-elasticsearch
9497147a0263   mrvautin/adminmongo                                        "docker-entrypoint.s…"   8 minutes ago   Up 3 minutes             0.0.0.0:9091->1234/tcp, :::9091->1234/tcp                                                                                                                                                                                       adminmongo
```

### Graylog

Graylog Directory: */data/wwwroot/graylog*  
Graylog configuration file: */data/wwwroot/volumes/graylog/config/server.conf*  
Graylog log directory: */data/wwwroot/volumes/graylog/log* 

### Nginx

Nginx vhost configuration file: */etc/nginx/conf.d/default.conf*    
Nginx main configuration file: */etc/nginx/nginx.conf*   
Nginx logs file: */var/log/nginx*  
Nginx rewrite rules directory: */etc/nginx/conf.d/rewrite* 

### MongoDB

MongoDB directory: */data/db/mongo*  

### Elasticsearch

Elasticsearch directory: */data/db/elasticsearch*  

### adminMongo

adminMongo is a visual MongoDB management tool, is installed based on docker.  

adminMongo directory：*/data/apps/adminmongo*  
adminMongo docker compose file：*/data/apps/adminmongo/docker-compose.yml* 

### Docker

Docker root directory: */var/lib/docker*  
Docker image directory: */var/lib/docker/image*   
Docker daemon.json: please create it when you need and save to to the directory */etc/docker*   

## Ports

You can control(open or shut down) ports by **[Security Group Setting](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** of your Cloud Server whether the port can be accessed from Internet.

You can run the cmd `netstat -tunlp` to list all used ports, and we list the following most useful ports:

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| TCP | 80 | HTTP requests for Graylog Console| Required |
| TCP | 443 | HTTPS requests for Graylog Console | Optional |
| TCP | 27017 | MongoDB | Optional |
| TCP | 9001 | Graylog  | Optional |
| TCP | 9091 | HTTP access to AdminMongo | Optional |
| TCP | 9200, 9300 | ElasticSearch  | Optional |


## Version

You can see the version from product page of Marketplace. However, after being deployed to your server, the components will be automatically updated, resulting in a certain change in the version number. Therefore, the exact version number should be viewed by running the command on the server:

```shell
# Check all components version
sudo cat /data/logs/install_version.txt

# Linux Version
lsb_release -a

# Nginx  Version
nginx -V

# Docker Version
docker -v

# Graylog Version
docker images |grep graylog/graylog |awk '{print $2}'

# Elasticsearch version
docker exec -it graylog-elasticsearch curl -XGET localhost:9200

# Mongo version
docker exec -it graylog-mongo mongo --version
```
