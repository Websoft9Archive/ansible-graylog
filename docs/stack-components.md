# Parameters

The Graylog deployment package contains a sequence software (referred to as "components") required for Graylog to run. The important information such as the component name, installation directory path, configuration file path, port, version, etc. are listed below.

## Path

### Graylog

Graylog Directory: */usr/share/graylog-server*  
Graylog configuration file: */etc/graylog/server/server.conf*  
Graylog log file: */var/log/graylog-server/server.log*  

### OpenJDK

Java directory: */usr/lib/jvm*  

### Nginx

Nginx vhost configuration file: */etc/nginx/conf.d/default.conf*    
Nginx main configuration file: */etc/nginx/nginx.conf*   
Nginx logs file: */var/log/nginx*  
Nginx rewrite rules directory: */etc/nginx/conf.d/rewrite* 

### MongoDB

MongoDB configuration file: */etc/mongod.conf*  
MongoDB data directory: */var/lib/mongodb*  
MongoDB log file: */var/log/mongodb/mongod.log*  
MongoDB bin directory: */usr/bin*  

### Elasticsearch

Elasticsearch Configuration File: */etc/elasticsearch/elasticsearch.yml*  
Elasticsearch log directory: */var/log/elasticsearch*  
Elasticsearch directory: */usr/share/elasticsearch*  

### Docker

Docker root directory: */var/lib/docker*  
Docker image directory: */var/lib/docker/image*   
Docker daemon.json: please create it when you need and save to to the directory */etc/docker*   

### AdminMongo

AdminMongo is a visual MongoDB management tool, is installed based on Docker.  

## Ports

You can control(open or shut down) ports by **[Security Group Setting](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** of your Cloud Server whether the port can be accessed from Internet.

You can run the cmd `netstat -tunlp` to list all used ports, and we list the following most useful ports:

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| TCP | 80 | HTTP requests for Graylog Console| Required |
| TCP | 443 | HTTPS requests for Graylog Console | Optional |
| TCP | 27017 | MongoDB | Optional |
| TCP | 9000 | Graylog  | Optional |
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

# Java version
java -v

# Docker Version
docker -v

# MongoDB version
mongodb -V

# Elasticsearch version
curl -XGET localhost:9200

# Graylog  Version
yum info graylog
apt show graylog
```
