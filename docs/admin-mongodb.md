# MongoDB

Graylog deployment package includes MongoDB and Web-GUI tool AdminMongo for MongoDB management, refer to these steps to use it:

1. Using the Chrome or FireFox to visit URL *http://Internet IP:9091* for adminMongo
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/mongodb/adminmongo-consolegui-websoft9.png)

2. And you can use **SSH** to login Mongo Shell to manage MongoDB([Don't known password?](/stack-accounts.md)) 
   ```
   # log in Mongo Shell without authenticating
   mongo

   # log in Mongo Shell witt authenticating
   mongo admin --username root -p
   ```

> Websoft9 provide *[MongoDB guide](https://support.websoft9.com/docs/mongodb)* for more useful skills of MongoDB, includes: modify password, create user, import/export data, enable or disable remote visit, log configuration and so on.