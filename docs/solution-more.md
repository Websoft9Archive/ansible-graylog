# More

Each of the following solutions has been proven to be effective and we hope to be helpful to you.

## Domain binding

The precondition for binding a domain is that Graylog can accessed by domain name.

Nonetheless, from the perspective of server security and subsequent maintenance considerations, the **Domain Binding** step cannot be omitted.

Graylog domain name binding steps:

1. Connect your Cloud Server
2. Modify [Nginx vhost configuration file](/stack-components.md#nginx), change the **server_name**'s value to your domain name
   ```text
   server
   {
   listen 80;
   server_name www.example.com;  # modify it to your domain name
   ...
   }
   ```

4. Modify `APP_SITE_URL` item of [.env file ](/zh/stack-components.md#graylog) at Graylog root directory

5. Restart service
   ```
   sudo systemctl restart nginx
   cd /data/wwwroot/graylog && sudo docker-compose up -d
   ```

## Configuration File

Every [configuration option](https://docs.graylog.org/docs/server-conf) can be set via environment variables.. Simply prefix the parameter name with **GRAYLOG_** and put it all in upper case.  

For example, setting up the SMTP configuration for sending Graylog alert notifications via email, the **docker-compose.yml** would look like this:  

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


## Resetting Password

Try to reset your password if you can't use email to reset it:

1. Use SSH tool to login Server, then run the below commands
   ```
   new_password=admin123@graylog
   sha_password=$(echo -n $new_password | sha256sum | awk '{ print $1 }')
   sudo sed -i "s/8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918/$sha_password/g" /data/wwwroot/graylog/.env
   ```

2. You new password is `admin123@graylog` now after docker-compose recreate
   ```
   cd /data/wwwroot/graylog && sudo docker-compose up -d
   ```

> You can set the new_password to any string if you want