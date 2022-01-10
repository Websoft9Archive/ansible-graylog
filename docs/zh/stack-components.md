---
sidebarDepth: 3
---

# 参数

Graylog 预装包包含 Graylog 运行所需一序列支撑软件（简称为“组件”），下面列出主要组件名称、安装路径、配置文件地址、端口、版本等重要的信息。

## 路径

本部署方案中的 RabbitMQ 采用 Docker 部署，运行 `docker ps` 查看运行的容器。  

```
CONTAINER ID   IMAGE                                                      COMMAND                  CREATED         STATUS                   PORTS                                                                                                                                                                                                                           NAMES
dffc0d802a26   graylog/graylog:4.1                                        "/usr/bin/tini -- wa…"   2 minutes ago   Up 2 minutes (healthy)   0.0.0.0:1514->1514/tcp, 0.0.0.0:1514->1514/udp, :::1514->1514/tcp, :::1514->1514/udp, 0.0.0.0:12201->12201/tcp, 0.0.0.0:12201->12201/udp, :::12201->12201/tcp, :::12201->12201/udp, 0.0.0.0:9001->9000/tcp, :::9001->9000/tcp   graylog
7c0a42a383c3   mongo:4.2                                                  "docker-entrypoint.s…"   2 minutes ago   Up 2 minutes             27017/tcp                                                                                                                                                                                                                       graylog-mongo
f4cd00fc5f58   docker.elastic.co/elasticsearch/elasticsearch-oss:7.10.2   "/tini -- /usr/local…"   2 minutes ago   Up 2 minutes             9200/tcp, 9300/tcp                                                                                                                                                                                                              graylog-elasticsearch
9497147a0263   mrvautin/adminmongo                                        "docker-entrypoint.s…"   8 minutes ago   Up 3 minutes             0.0.0.0:9091->1234/tcp, :::9091->1234/tcp                                                                                                                                                                                       adminmongo
```

### Graylog

Graylog 安装路径: */data/wwwroot/graylog*  
Graylog 配置文件: */data/wwwroot/volumes/graylog/config/server.conf*  
Graylog 日志目录: */data/wwwroot/volumes/graylog/log*  

### MongoDB

MongoDB 配置文件: */data/db/mongo*  
MongoDB 数据目录: */data/db/mongo/db*  

### Elasticsearch

Elasticsearch 数据目录: */data/db/elasticsearch*  

### Docker

Docker 根目录: */var/lib/docker*  
Docker 镜像目录: */var/lib/docker/image*   
Docker daemon.json 文件：默认没有创建，请到 */etc/docker* 目录下根据需要自行创建   

### Nginx

Nginx 虚拟主机配置文件: */etc/nginx/conf.d/default.conf*    
Nginx 主配置文件: */etc/nginx/nginx.conf*   
Nginx 日志文件: */var/log/nginx*  
Nginx 伪静态配置目录: */etc/nginx/conf.d/rewrite* 

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
| TCP | 9001 | Graylog 端口 | 可选 |
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

# Docker Version
docker -v

# Graylog Version
docker images |grep graylog/graylog |awk '{print $2}'

# Elasticsearch version
docker exec -it graylog-elasticsearch curl -XGET localhost:9200

# Mongo version
docker exec -it graylog-mongo mongo --version
```
