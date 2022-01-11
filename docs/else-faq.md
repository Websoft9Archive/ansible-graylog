# FAQ

#### Graylog Architecture?
![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/graylog/graylog-arch-websoft9.png)


#### Graylog HA deployment?

![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/graylog/architec_bigger_setup.png)


#### If there is no domain name, can I deploy Graylog?

No, you must configure domain name for Graylog

#### What is the password for the database root user?

The password is stored in the server related file: `/credentials/password.txt`

#### Is there a web-base GUI database management tools?

Yes, AdminMongo is on it, visit by *http://Internet IP:9091*

#### Is it possible to modify the source path of Graylog?

Yes

#### How to change the permissions of filesytem?

Change owner(group) or permissions like below:

```shell
chown -R graylog.graylog /data/wwwroot/graylog
find /data/wwwroot/graylog -type d -exec chmod 750 {} \;
find /data/wwwroot/graylog -type f -exec chmod 640 {} \;
```

#### What's the difference between Deployment and Installation?

- Deployment is a process of installing and configuring a sequence of software in sequence in a different order, which is a complex system engineering.  
- Installation is the process of starting the initial wizard after the application is prepared.  
- Installation is simpler than deployment. 

#### What's Cloud Platform?

Cloud platform refers to platform manufacturers that provide cloud computing services, such as: **Azure, AWS, Alibaba Cloud, HUAWEI CLOUD, Tencent Cloud**, etc.

#### What is the difference between Instance, Cloud Server, Virtual Machine, ECS, EC2, CVM, and VM?

No difference, just the terminology used by different manufacturers, actually cloud servers
