# Graylog自动化安装与部署
本项目是由 [Websoft9](http://www.websoft9.com) 研发的 [GitLab](https://www.graylog.org) 自动化安装程序，开发语言是 Ansible。使用本项目，只需要用户在 Linux 上运行一条命令，即可自动化安装 GitLab，让原本复杂的安装过程变得没有任何技术门槛。  

本项目是开源项目，采用 LGPL3.0 开源协议。

![](http://docs.graylog.org/en/3.1/_images/architec_small_setup.png)

## 配置要求

操作系统：目前仅支持 Ubuntu16.x 以上部署此脚本  
硬件配置：最低4G内存，30G系统盘空间，否则无法安装

## 组件

包含的核心组件为：Graylog,Nginx,JAVA,MongoDB,AdminMongo(Docker),Elasticsearch

更多请见[参数表](/docs/zh/stack-components.md)

## 本项目安装的是 Graylog 最新版吗？

本 Graylog 项目采用APT安装方式，对应的版本请通过：roles/graylog2/defaults/main.yml 查看。
我们尽量维护更新最新的版本，但可能受制于各种因素，项目安装的也许不是Graylog 官方最新稳定版。

如果版本不是你所要的，如何调整为版本？

1. 通过 [Graylog下载中心](https://www.graylog.org/downloads)查看官方最新版本
2. 检查 Graylog 所依赖的 Mongodb,Elasticsearch 等组件的版本要求：打开：[【Graylog官方文档】](http://docs.graylog.org)，依次进入：Installing Graylog->Operating System Packages->Prerequisites 小节，查看依赖组件的版本要求。
3. 修改本项目的 [main.yml](roles/graylog2/defaults/main.yml)，分别更改源地址
```
https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0
https://artifacts.elastic.co/packages/oss-6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list
https://packages.graylog2.org/repo/packages/graylog-3.1-repository_latest.deb
```

## 安装指南

以 root 用户登录 Linux，运行下面的**命令脚本**即可启动自动化部署，然后耐心等待，直至安装成功。

```
# coming soon
```  

注意：  

1. 如果以非 root 用户身份登录 Linux，请先通过 sudo 或 su 提升权限，再运行脚本。
2. 由于自动化安装过程中有大量下载任务，若网络不通（或速度太慢）会引起下载失败，从而导致安装程序终止运行。此时，请重置服务器后再次尝试安装，若仍然无法完成，请使用我们在公有云上发布的 [GitLab 镜像](https://apps.websoft9.com/graylog) 的部署方式


## 文档

文档链接：https://support.websoft9.com/docs/graylog

## FAQ

- 命令脚本部署与镜像部署有什么区别？请参考[镜像部署-vs-脚本部署](https://support.websoft9.com/docs/faq/zh/bz-product.html#镜像部署-vs-脚本部署)
- 本项目支持在 Ansible Tower 上运行吗？支持
