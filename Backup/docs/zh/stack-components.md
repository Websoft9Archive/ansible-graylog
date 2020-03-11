# 参数

## 组件及路径

Graylog部署包中不仅仅只有Graylog本身，还包含一序列支持Scratch运行所需的其他软件（这里称之为组件），下面列出主要组件名称、安装路径、配置文件地址等重要的信息：

### Graylog

Graylog安装目录: /usr/share/graylog-server
Graylog配置文件: /etc/graylog/server/server.conf
插件路径：/usr/share/graylog-server/plugin
日志文件路径：/var/log/graylog-server/server.log

### Nginx

Nginx 虚拟主机配置文件：/etc/nginx/sites-available/default 

Nginx 主配置文件： /etc/nginx/nginx.conf  

Nginx 日志文件： /var/log/nginx/

### MongoDB

MongoDB 存储目录：/var/lib/mongodb  

MongoDB 配置文件：/etc/mongod.conf   

MongoDB 日志目录：/var/log/mongodb/mongod.log  

MongoDB 可视化管理地址: http://服务器公网IP:9090


## 端口号

下面是您在使用本镜像过程中，需要用到的端口号，请通过云控制台安全组进行设置

| 名称 | 端口号 | 用途 |  必要性 |
| --- | --- | --- | --- |
| HTTP | 80 | 通过http访问Graylog | 必须 |
| HTTPS | 443 | 通过https访问Graylog | 可选 |
| adminmongo | 9091 | 通过http管理MongoDB | 可选 |

## 版本号

组件对应的基本版本号可以通过云市场商品页面查看，但部署到您的服务器之后，版本会有一定的升级，故更为精准的版本请通过在服务器上运行命令查看：

Graylog: 3.2（通过官网查看）

Nginx:	nginx -v

Docker:	docker --version

MongoDB: mongo --versio

