# 初始化安装

在云服务器上部署 Graylog 预装包之后，请参考下面的步骤快速入门。

## 准备

1. 在云控制台获取您的 **服务器公网IP地址** 
2. 在云控制台安全组中，检查 **Inbound（入）规则** 下的 **TCP:15672** 端口是否开启
3. 若想用域名访问 Graylog，请先到 **域名控制台** 完成一个域名解析

## Graylog 安装向导

1. 使用本地电脑的 Chrome 或 Firefox 浏览器访问网址： *http://域名* or *http://服务器公网IP*,进入初始化页面。必须给 Graylog 配置好域名后方可使用
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/graylog/graylog-initwizard-websoft9.png)

   * **Configure Domain Name by script**

     1. Connect your Graylog Server and run the command below
        ```
        bash /etc/graylog/config_domain.sh
        ```

     2. If you input a incorrect Domain Name on the below step, please refer to **Configure Domain Name by manual** to fix it

   
   * **Configure Domain Name by manual**

     1. Bidding domain name in the graylog configuration file: */etc/graylog/server/server.conf*
        ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/graylog/graylog-biddns-websoft9.png)
     
     2. Bidding domain name in the Nginx configuration file: */etc/nginx/sites-available/default*
        ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/graylog/graylog-nginx-websoft9.png)

     3. Restart service
        ```
        sudo systemctl restart graylog-server
        sudo systemctl restart nginx
        ```

2. 登录 Graylog 控制台 ([Don't have password?](/stack-accounts.md#graylog))  
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/graylog/graylog-login-websoft9.png)

3. 开始使用
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/graylog/graylog-adminui-websoft9.png)

> 需要了解更多 Graylog 的使用，请参考官方文档：[Configuring Graylog](https://docs.graylog.org/en/3.3/pages/configuration.html)


## 常见问题

#### 浏览器打开IP地址，无法访问 Graylog（白屏没有结果）？

您的服务器对应的安全组80端口没有开启（入规则），导致浏览器无法访问到服务器的任何内容

#### 不配置域名可以使用 Graylog 吗？

不可以，Graylog 要求使用域名才可以访问

#### 如何修改域名配置？

修改 */etc/nginx/sites-available/default* 和 */etc/graylog/server/server.conf* 中域名有关的部分