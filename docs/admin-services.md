# Start or Stop the Services

These commands you must know when you using the Graylog of Websoft9

#### Graylog

```shell
sudo docker start graylog
sudo docker stop graylog
sudo docker restart graylog
sudo docker status graylog
```

#### Nginx

```shell
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
```

#### MongoDB

```shell
sudo docker start graylog-mongo
sudo docker stop graylog-mongo
sudo docker restart graylog-mongo
sudo docker status graylog-mongo
```

#### Elasticsearch

```shell
sudo docker start graylog-elasticsearch
sudo docker stop graylog-elasticsearch
sudo docker restart graylog-elasticsearch
sudo docker status graylog-elasticsearch
```