# Graylog自动化安装与部署

本项目是基于Ansible的[Graylog](https://www.graylog.org/)自动化安装脚本，实现在Ansible上一键安装Graylog。本项目是开源项目，支持MIT开源协议。如果您不熟悉Ansible的使用，您可以直接使用我们在公有云上提供的镜像。

## 操作系统

目前仅支持Ubuntu16.x以上部署此脚本

## 服务器配置要求

最低4G内存，30G系统盘空间，否则无法安装

## 版本

本项目Graylog官方采用APT安装方式，修改变量选择大版本

官方关于DEB/APT源的[说明文档](http://docs.graylog.org/en/3.0/pages/installation/operating_system_packages.html)，例如：

~~~
 修改 roles 中 graylog 内 defaults下的变量 graylog_ver 对应新的版本号即可
~~~


## 安装指南

本Ansible脚本支持root用户、普通用户（+su权限提升）等两种账号模式，也支持密码和秘钥对登录方式。

其中普通用户登录需要增加变量：

~~~
//假设普通用户的username为
admin_username: websoft9
~~~

## 组件
Graylog,Nginx,JAVA,MongoDB,AdminMongo(Docker)

## 使用指南

1. 该软件需要绑定域名使用；
2. 默认登录密码是：admin/admin123

文档链接：[readme.txt](readme.txt)
