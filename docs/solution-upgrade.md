# Update & Upgrade

Updates and upgrades are one of the maintenance tasks for sytem. Programs that are not upgraded for a long time, like buildings that are not maintained for a long time, will accelerate aging and gradually lose functionality until they are unavailable.

You should know the differences between the terms **Update** and **Upgrade**([Extended reading](https://support.websoft9.com/docs/faq/tech-upgrade.html#update-vs-upgrade))
- Operating system patching is **Update**, Ubuntu16.04 to Ubuntu18.04 is **Upgrade**
- MySQL5.6.25 to MySQL5.6.30 is **Update**, MySQL5.6 to MySQL5.7 is **Upgrade**

For Graylog maintenance, focus on the following two Update & Upgrade jobs

- Sytem update(Operating System and Running Environment) 
- Graylog upgrade 

## System Update

Run an update command to complete the system update:

``` shell
#For Ubuntu&Debian
apt update && apt upgrade -y

#For Centos&Redhat
yum update -y --skip-broken
```
> This deployment package is preconfigured with a scheduled task for automatic updates. If you want to remove the automatic update, please delete the corresponding Cron

## Graylog Upgrade

This deployment solution is based on Docker and so you can upgrade Graylog by the standard process of Docker:  

> You should complete an image or snapshot backup for instance before upgrade

1. Use **SFTP** to login Server, modify **APP_VERSION** in the **.env** file of Graylog directory

2. Go to the Graylog root directory, then pull new images
   ```
   cd /data/wwwroot/rabbitmq
   docker-compose pull
   ```
3. Delete old container and recreate new container
   ```
   docker-compose down
   docker-compose up -d
   ```

More details refer to the official docs: [Upgrading Graylog](https://docs.graylog.org/en/3.3/pages/installation/operating_system_packages.html#operating-package-upgrade-rpm-yum-dnf)
