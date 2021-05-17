# 初始化安装

在云服务器上部署 Graylog 预装包之后，请参考下面的步骤快速入门。

## 准备

1. 在云控制台获取您的 **服务器公网IP地址** 
2. 在云控制台安全组中，检查 **Inbound（入）规则** 下的 **TCP:80** 端口是否开启
3. 若想用域名访问 Graylog，请先到 **域名控制台** 完成一个域名解析

## Graylog 安装向导

1. 使用本地 Chrome 等浏览器访问网址： *http://域名* or *http://服务器公网IP*，进入 Graylog 登录界面
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/graylog/graylog-login-websoft9.png)

2. 输入账号密码后，登入到 Graylog 控制台 ([不知道密码?](/zh/stack-accounts.md#graylog))  
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/graylog/graylog-console-websoft9.png)

3. 如果需要，可以给 [Graylog 绑定域名](/zh/solution-more.md#域名绑定)

> 需要了解更多 Graylog 的使用，请参考官方文档：[Configuring Graylog](https://docs.graylog.org/en/latest/pages/configuration.html)

## Graylog 入门向导


## 常见问题

#### 浏览器打开IP地址，无法访问 Graylog（白屏没有结果）？

您的服务器对应的安全组 80 端口没有开启（入规则），导致浏览器无法访问到服务器的任何内容

#### Graylog 应用的端口是多少？

9001

#### 不配置域名可以使用 Graylog 吗？

可以

#### 如何修改域名配置？

修改 */etc/nginx/sites-available/default* 和 */etc/graylog/server/server.conf* 中域名有关的部分
