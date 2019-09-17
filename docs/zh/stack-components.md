# 参数

## 组件及路径

Graylog部署包中不仅仅只有Graylog本身，还包含一序列支持Scratch运行所需的其他软件（这里称之为组件），下面列出主要组件名称、安装路径、配置文件地址等重要的信息：

### Graylog

Graylog安装目录: /usr/share/Graylog
Graylog配置文件: /usr/share/Graylog/conf/defaults.ini
数据存储路径：/usr/share/Graylog/data
日志文件路径：/usr/share/Graylog/data/log

## 端口号

下面是您在使用本镜像过程中，需要用到的端口号，请通过云控制台安全组进行设置

| 名称 | 端口号 | 用途 |  必要性 |
| --- | --- | --- | --- |
| HTTP | 80 | 通过http访问Graylog | 必须 |
| HTTPS | 443 | 通过https访问Graylog | 可选 |

## 版本号

组件对应的基本版本号可以通过云市场商品页面查看，但部署到您的服务器之后，版本会有一定的升级，故更为精准的版本请通过在服务器上运行命令查看：

Couchbase: 6.0.0（通过web界面查看）
