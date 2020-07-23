# Graylog Notes

组件名称：Graylog  
安装文档：https://docs.graylog.org/en/3.3/pages/installation/operating_system_packages.html  
配置文档：https://docs.graylog.org/en/3.3/pages/configuration.html  
支持平台： deb,rpm | Chef, Puppet, Ansible | Docker | OVAr | AWS image | Windows  

责任人：cdl  

## 概要

Graylog是一个开源的日志聚合、分析、审计、展现和预警工具。

## 环境要求

* 程序语言：Java 
* 应用服务器：自带
* 数据库：MongoDB
* 依赖组件：Elasticsearch
* 服务器配置：最低2核4G
* 其他：

## 安装说明

目前采用 apt/rpm 包作为主要安装方式


## 服务

本项目安装后自动生成：rabbitmq-server 服务

备注：如果开机没有服务，程序无法运行的情况下，需要自行编写服务后存放到项目中

服务的模板如下：

```
[Unit]
Description=Redmine
After=nginx.service
[Service]
Environment=RAILS_ENV=production
Type=simple
WorkingDirectory=/data/wwwroot/redmine
ExecStart=/usr/local/bin/puma -b tcp://127.0.0.1:9292 -e production 
User=redmine
[Install]
WantedBy=multi-user.target
```

## 环境变量

列出需要增加的环境变量以及增加环境变量的命令：

* 名称 | 路径

## 版本号

通过如下的命令获取主要组件的版本号: 

```
# Check RabbitMQ version
sudo rabbitmqctl status | grep RabbitMQ*

# Check Erlang version
ls /usr/lib64/erlang
```

## 常见问题

#### 有没有管理控制台？

*http:// 公网 IP:15672* 即可访问控制台，系统默认存在一个无法通过外网访问的guest/guest账号

#### 本项目需要开启哪些端口？

| item      | port  |
| --------- | ----- |
| lustering | 25672 |
| AMQP      | 5672  |
| http      | 15672 |

#### 有没有CLI工具？

有，通过 `rabbitmqctl` 查看工具的说明

#### 安装后是否需要创建普通用户？

有，rabbitmq
