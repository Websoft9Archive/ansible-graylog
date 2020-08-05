# Graylog自动化安装与部署
本项目是由 [Websoft9](http://www.websoft9.com) 研发的 [Graylog](https://www.graylog.org) 自动化安装程序，开发语言是 Ansible。使用本项目，只需要用户在 Linux 上运行一条命令，即可自动化安装 Graylog，让原本复杂的安装过程变得没有任何技术门槛。  

本项目是开源项目，采用 LGPL3.0 开源协议。

![](http://docs.graylog.org/en/3.1/_images/architec_small_setup.png)

## 配置要求

安装本项目，确保符合如下的条件：

| 条件       | 详情       | 备注  |
| ------------ | ------------ | ----- |
| 操作系统       | Ubuntu18.04       |    |
| 公有云| AWS, Azure, 阿里云, 华为云, 腾讯云 |  |
| 私有云|  KVM, VMware, VirtualBox, OpenStack |  |
| 服务器配置 | 最低1核4G，安装时所需的带宽不低于10M |  建议采用按量100M带宽 |

## 组件

包含的核心组件为：Graylog, Nginx, MongoDB, OpenJDK, Docker, AdminMongo on docker, Elasticsearch

更多请见[参数表](/docs/zh/stack-components.md)

## 本项目安装的是 Graylog 最新版吗？

本 Graylog 项目采用 APT 安装方式，即每一次安装均可保证为 Graylog 官方发布的最新版。

如果版本不是你所要的，如何调整为版本？

1. 通过 [Graylog下载中心](https://www.graylog.org/downloads)查看官方最新版本
2. 修改本项目的 [role/graylog/defaults/main.yml](roles/graylog/defaults/main.yml) 中的 graylog_deb_url 变量值即可。

## 安装指南

以 root 用户登录 Linux，运行下面的**一键自动化安装命令**即可启动自动化部署。若没有 root 用户，请以其他用户登录 Linux 后运行 `sudo su -` 命令提升为 root 权限，然后再运行下面的脚本。

```
wget -N https://raw.githubusercontent.com/Websoft9/ansible-linux/master/scripts/install.sh; bash install.sh -r graylog
```

脚本后启动，就开始了自动化安装，必要时需要用户做出交互式选择，然后耐心等待直至安装成功。

**安装中的注意事项：**  

1. 操作不慎或网络发生变化，可能会导致SSH连接被中断，安装就会失败，此时请重新安装
2. 安装缓慢、停滞不前或无故中断，主要是网络不通（或网速太慢）导致的下载问题，此时请重新安装

多种原因导致无法顺利安装，请使用我们在公有云上发布的 [Graylog 镜像](https://apps.websoft9.com/graylog) 的部署方式


## 文档

文档链接：https://support.websoft9.com/docs/graylog/zh

## FAQ

- 命令脚本部署与镜像部署有什么区别？请参考[镜像部署-vs-脚本部署](https://support.websoft9.com/docs/faq/zh/bz-product.html#镜像部署-vs-脚本部署)
- 本项目支持在 Ansible Tower 上运行吗？支持
