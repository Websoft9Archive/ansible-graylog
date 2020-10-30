# Graylog Cloud Installer

![](https://libs.websoft9.com/common/websott9-cloud-installer.png) 

## Introduction

[English](/README.md) | [简体中文](/README_zh.md)  

**Graylog Cloud Installer**, developed by [Websoft9](https://www.websoft9.com), is an automatic installation program of [Graylog](https://www.graylog.org/) based on Ansible. It helps user install Graylog and pre-configure required items automatically and users only need to run a command on Linux. It simplifies the complicated installation and initialization process.  

![](https://libs.websoft9.com/Websoft9/DocsPicture/en/graylog/graylog-gui-websoft9.png)

## System Requirement

System Requirement to install this repository are as following：

| Conditions       | Details                               | Notes                |
| -------------- | ----------------------------------- | -------------------- |
| Operating System   | CentOS7.x, Ubuntu18.04, Amazon Linux2 | Optional                 |
| Public Cloud     | AWS, Azure, Alibaba Cloud, HUAWEI ClOUD, Tencent Cloud    | Optional                 |
| Private Cloud     | KVM, VMware, VirtualBox, OpenStack    | Optional                 |
| Server Configuration | vCPU no less than 2 core, Memory no less than  4 GIB, Storage no less than 20 GB, Bandwidth no less than 100M ||

To learn more information, please view [System Requirement](https://docs.graylog.org/en/3.3/pages/installation.html#system-requirements).

## Ecosystem

Core components of this repository: Graylog, Nginx, MongoDB, OpenJDK, Docker, AdminMongo on docker, Elasticsearch

Learn more about [Parameters](/docs/stack-components.md).

## Installation

You can install it by All-in-one Installer. In addition, you can deploy image published on major Cloud Platform by Websoft9.

#### All-in-one Installer

Run the automatic installation script with **root** authority to start the installation. If necessary, users need to make interactive choices, and then wait patiently until the installation is successful.

```
$ sudo su -
$ wget -N https://raw.githubusercontent.com/Websoft9/ansible-linux/main/scripts/install.sh; bash install.sh -r graylog
```

If the network is broken or blocked, SSH will be interrupted and the installation will fail. Please reinstall.

#### Image on Cloud 

Follow our [Graylog image](https://apps.websoft9.com/graylog) for installation on major Cloud Platform.

## Documentation

To get information about initial installation, default username and password, HTTPS, SMTP, Backup, Upgrade and more, please view **Graylog Administrator Guide** ([English](https://support.websoft9.com/docs/graylog) | [简体中文](https://support.websoft9.com/docs/graylog/zh))

## Changelog

Detailed changes are documented in the [CHANGELOG](/CHANGELOG.md).

## License

[LGPL-3.0](/License.md), Additional Terms: It is not allowed to publish free or paid image based on this repository in any Cloud platform's Marketplace.

Copyright (c) 2016-present, Websoft9

## FAQ

#### Can I run this repository on Ansible Tower? 

Yes.

#### How to install and view the latest release？

Get the Graylog version from [Graylog Download page](https://www.graylog.org/downloads#open-source), and modify the Ansible variable **[awx_version](/roles/ansible/defaults/main.yml)** to change the Graylog version for this repository. 

#### Is the default password safe?

Graylog Cloud Installer use the random password solution, every installation have different password, that mean your password is different from other users
