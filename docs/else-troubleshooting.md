# Troubleshooting

We collect the most common troubleshooting of using Graylog for your reference:

> Instance troubleshooting is closely related to the Instance provider that is Cloud Platform, refer to [Cloud Platform Documentation](https://support.websoft9.com/docs/faq/tech-instance.html)

#### How can I use the logs?

You can find the keywords **Failed** or **error** from the logs directory: `/data/logs`

#### Graylog service can't start?

Insufficient disk space and memory, incorrect configuration file may cause the failure to start the service. 

It is recommended to first check through the command.

```shell
# restart Graylog service
systemctl status graylog-server
journalctl -u graylog-server

# view disk space
df -lh

# view memory rate
free -lh
```