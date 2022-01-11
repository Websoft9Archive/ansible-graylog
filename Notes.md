# Graylog Notes

本项目基于官方提供的 Docker 项目安装，官方有非常详细的文档：[Graylog Docker Install](https://docs.graylog.org/docs/docker)  

## 配置文件

每个配置选项都可以通过环境变量进行设置。只需在参数名称前加上前缀GRAYLOG_并将其全部大写。

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

## 插件