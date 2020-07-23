# MongoDB

Graylog 预装包中内置 MongoDB 及可视化数据库管理工具 `AdminMongo` ，使用请参考如下步骤：

1. 本地浏览器 Chrome 或 Firefox 访问：*http://服务器公网IP:9091*，使用 adminMongo 管理数据库
   ![adminmongo](https://libs.websoft9.com/Websoft9/DocsPicture/zh/mongodb/adminmongo-consolegui-websoft9.png)
   
2. 也可以使用 Mongo Shell 采用命令行方式管理数据库([不知道密码？](/zh/stack-accounts.md))
   ```
   # log in Mongo Shell without authenticating
   mongo

   # log in Mongo Shell witt authenticating
   mongo admin --username root -p
   ```

> 阅读Websoft9提供的 [《MongoDB教程》](https://support.websoft9.com/docs/mongodb/zh) ，掌握更多的MongoDB实用技能：修改密码、导入/导出数据、创建用户、开启或关闭远程访问、日志配置等