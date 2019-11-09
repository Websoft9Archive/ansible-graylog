# Graylog自动化安装与部署

本项目是基于Ansible的[Graylog](https://www.graylog.org/)自动化安装脚本，实现在Ansible上一键安装Graylog。本项目是开源项目，支持MIT开源协议。如果您不熟悉Ansible的使用，您可以直接使用我们在公有云上提供的镜像。
![](http://docs.graylog.org/en/3.1/_images/architec_small_setup.png)

## 配置要求

操作系统：目前仅支持Ubuntu16.x以上部署此脚本  
硬件配置：最低4G内存，30G系统盘空间，否则无法安装

## 组件

包含的核心组件为：Graylog,Nginx,JAVA,MongoDB,AdminMongo(Docker),Elasticsearch

## 最新版本修正



Graylog的版本号通过Graylog的[下载中心](https://www.graylog.org/downloads)查看

本项目Graylog官方采用APT安装方式，其所版本号查看官方关于DEB/APT源的[说明文档](http://docs.graylog.org/en/3.0/pages/installation/operating_system_packages.html)，例如：

版本文件：roles/graylog2/defaults/main.yml
1. graylog 源地址
2. mongodb 源地址
3. 

## 安装指南

本Ansible脚本支持root用户、普通用户（+su权限提升）等两种账号模式，也支持密码和秘钥对登录方式。

在Linux上运行下面一条命令即可启动自动化部署

```
# coming soon
```

## 管理指南

1. 该软件需要绑定域名使用；
2. 默认登录密码是：admin/admin123

详情请参考文档链接：https://support.websoft9.com/docs/graylog
