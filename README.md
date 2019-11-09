# Graylog自动化安装与部署

本项目由 Websoft9 研发，是基于 Ansible 的 [Graylog](https://www.graylog.org/) 自动化安装程序。使用本项目，只需要用户在 Linux 上运行一条命令，即可自动化安装 Graylog，让原本复杂的安装过程变得没有任何技术门槛。  

本项目是开源项目，支持MIT开源协议。

![](http://docs.graylog.org/en/3.1/_images/architec_small_setup.png)

## 配置要求

操作系统：目前仅支持Ubuntu16.x以上部署此脚本  
硬件配置：最低4G内存，30G系统盘空间，否则无法安装

## 组件

包含的核心组件为：Graylog,Nginx,JAVA,MongoDB,AdminMongo(Docker),Elasticsearch

## 怎样安装 Graylog 最新版本？

本 Graylog 项目采用APT安装方式，对应的版本请通过：roles/graylog2/defaults/main.yml 查看。
我们尽量维护更新最新的版本，但可能受制于各种因素，项目安装的也许不是Graylog 官方最新稳定版。

如果版本不是你所要的，如何更改版本？

1. 通过 [Graylog下载中心](https://www.graylog.org/downloads)查看官方最新版本
2. 本项目Graylog官方采用APT安装方式，其所版本号查看官方关于DEB/APT源的[说明文档](http://docs.graylog.org/en/3.0/pages/installation/operating_system_packages.html)，例如：


1. graylog 源地址
2. mongodb 源地址
3. 

## 安装指南

本Ansible脚本支持root用户、普通用户（+su权限提升）等两种账号模式，也支持密码和秘钥对登录方式。

在Linux上运行下面一条命令即可启动自动化部署，然后耐心等待，直至安装成功

```
# coming soon
```

> 自动化安装过程中有大量下载任务，可能会出现网络不通（或速度太慢）导致下载失败而终止自动化安装。此时，请多试几次，若仍然无法完成，请使用我们在公有云上提供的的 [Graylog 镜像](https://apps.websoft9.com/graylog) 部署方式

## 管理指南

1. 该软件需要绑定域名使用；
2. 默认登录密码是：admin/admin123

详情请参考文档链接：https://support.websoft9.com/docs/graylog
