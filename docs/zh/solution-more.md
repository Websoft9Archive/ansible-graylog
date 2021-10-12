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
4. 修改 [Graylog 配置文件](/zh/stack-components.md#graylog)，启用 `transport_email_web_interface_url` 并修改域名
   ```
   # Specify and uncomment this if you want to include links to the stream in your stream alert mails.
   # This should define the fully qualified base url to your web interface exactly the same way as it is accessed by your users.
   #transport_email_web_interface_url = https://graylog.example.com

   更改为：
   transport_email_web_interface_url = https://graylog.yourdomain.com
   ```

5. 重启服务后生效
   ```
   sudo systemctl restart nginx
   sudo systemctl restart graylog-server
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

