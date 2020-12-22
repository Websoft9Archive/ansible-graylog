---
sidebarDepth: 3
---

# 参数

Graylog 预装包包含 Graylog 运行所需一序列支撑软件（简称为“组件”），下面列出主要组件名称、安装路径、配置文件地址、端口、版本等重要的信息。

## 路径

### Graylog

Graylog 安装路径: */usr/share/graylog-server*  
Graylog 配置文件: */etc/graylog/server/server.conf*  
Graylog 日志文件: */var/log/graylog-server/server.log*  

### OpenJDK

Java 虚拟机: */usr/lib/jvm*  

### Nginx

Nginx 虚拟主机配置文件: */etc/nginx/conf.d/default.conf*    
Nginx 主配置文件: */etc/nginx/nginx.conf*   
Nginx 日志文件: */var/log/nginx*  
Nginx 伪静态配置目录: */etc/nginx/conf.d/rewrite* 

### MongoDB

MongoDB 配置文件: */etc/mongod.conf*  
MongoDB 数据目录: */var/lib/mongodb*  
MongoDB 日志文件: */var/log/mongodb/mongod.log*  
MongoDB 可执行文件: */usr/bin*  

### Elasticsearch

Elasticsearch 配置文件: */etc/elasticsearch/elasticsearch.yml*  
Elasticsearch 日志文件: */var/log/elasticsearch*  
Elasticsearch 安装目录: */usr/share/elasticsearch*  

### Docker

Docker 根目录: */var/lib/docker*  
Docker 镜像目录: */var/lib/docker/image*   
Docker daemon.json 文件：默认没有创建，请到 */etc/docker* 目录下根据需要自行创建   

### AdminMongo

AdminMongo是一款可视化 MongoDB 管理工具，在本项目中它基于 Docker 安装。

## 端口号

在云服务器中，通过 **[安全组设置](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** 来控制（开启或关闭）端口是否可以被外部访问。 

通过命令`netstat -tunlp` 看查看相关端口，下面列出可能要用到的端口：

| 名称 | 端口号 | 用途 |  必要性 |
| --- | --- | --- | --- |
| TCP | 80 | HTTP requests for Graylog Console| 必要 |
| TCP | 443 | HTTPS requests for Graylog Console | 可选 |
| TCP | 27017 | MongoDB | 可选 |
| TCP | 9000 | Graylog 端口 | 可选 |
| TCP | 9091 | HTTP 访问 AdminMongo | 可选 |
| TCP | 9200, 9300 | ElasticSearch 端口 | 可选 |

## 版本号

组件版本号可以通过云市场商品页面查看。但部署到您的服务器之后，组件会自动进行更新导致版本号有一定的变化，故精准的版本号请通过在服务器上运行命令查看：

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