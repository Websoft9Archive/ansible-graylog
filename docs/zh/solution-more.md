# 更多...

下面每一个方案，都经过实践证明行之有效，希望能够对你有帮助

## 域名绑定

当服务器上只有一个网站时，不做域名绑定也可以访问网站。但从安全和维护考量，**域名绑定**不可省却。

以示例网站为例，域名绑定操作步骤如下：

1. 确保域名解析已经生效  

2. 使用 SFTP 工具登录云服务器

3. 修改 [Nginx虚拟机主机配置文件](/zh/stack-components.md#nginx)，将其中的 **server_name** 项的值修改为你的域名
   ```text
   server
   {
   listen 80;
   server_name www.example.com;  # 此处修改为你的域名
   ...
   }
   ```
4. 修改 Graylog 目录下的 [.env 文件 ](/zh/stack-components.md#graylog)，修改 `APP_SITE_URL` 为域名

5. 重启服务后生效
   ```
   sudo systemctl restart nginx
   cd /data/wwwroot/graylog && sudo docker-compose up -d
   ```

## 集群

我们知道，Graylog 运行时，包括如下软件：  

* Graylog 日志采集、分析
* ElasticSearch 日志存储
* MongoDB 系统配置系统

Graylog 支持如下最简答的部署方式：  
![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/graylog/graylog-minisetup-websoft9.png)

也支持复杂的[集群](https://docs.graylog.org/v1/docs/multinode-setup)部署：  
![Graylog 集群部署架构图](https://libs.websoft9.com/Websoft9/DocsPicture/zh/graylog/graylog-hasetup-websoft9.png)

其中，MongoDB 实际上可以不做集群。  

> 更多信息参考官方的[架构指南](https://www.slideshare.net/Graylog/graylog-engineering-design-your-architecture)

## 配置文件

针对于 Docker 安装，Graylog 每个配置选项都可以通过环境变量进行设置。  
只需在参数名称前加上前缀GRAYLOG_并将其全部大写。

```
version: '2'
  services:
    mongo:
      image: "mongo:4.2"
      # Other settings [...]
    elasticsearch:
      image: docker.elastic.co/elasticsearch/elasticsearch-oss:7.10.2
      # Other settings [...]
    graylog:
      image: graylog/graylog:4.2
      # Other settings [...]
      environment:
        GRAYLOG_TRANSPORT_EMAIL_ENABLED: "true"
        GRAYLOG_TRANSPORT_EMAIL_HOSTNAME: smtp
        GRAYLOG_TRANSPORT_EMAIL_PORT: 25
        GRAYLOG_TRANSPORT_EMAIL_USE_AUTH: "false"
        GRAYLOG_TRANSPORT_EMAIL_USE_TLS: "false"
        GRAYLOG_TRANSPORT_EMAIL_USE_SSL: "false"
```

同时，也支持直接修改配置文件 server.conf

## 重置密码

如果无法找回管理员密码，可以通过下面的步骤重置密码

1. 使用 SSH 工具登录服务器，运行下面的密码重置命令
   ```
   new_password=admin123@graylog
   sha_password=$(echo -n $new_password | sha256sum | awk '{ print $1 }')
   sudo sed -i "s/8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918/$sha_password/g" /data/wwwroot/graylog/.env
   ```

2. 重新运行容器编排命令，密码就被重置为 `admin123@graylog`
   ```
   cd /data/wwwroot/graylog && sudo docker-compose up -d
   ```

> 你可以将 new_password 设置为任何你想要的密码