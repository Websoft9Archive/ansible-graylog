# 服务启停

使用由Websoft9提供的 Graylog 部署方案，可能需要用到的服务如下：

#### Graylog

```shell
sudo systemctl start graylog
sudo systemctl stop graylog
sudo systemctl restart graylog
sudo systemctl status graylog
```

#### Nginx

```shell
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
```

#### MongoDB

```shell
sudo systemctl start mongod
sudo systemctl stop mongod
sudo systemctl restart mongod
```

#### Elasticsearch

```shell
sudo systemctl start elasticsearch
sudo systemctl stop elasticsearch
sudo systemctl restart elasticsearch
```