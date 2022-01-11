# SMTP

Sending mail is a common feature for Graylog. After a large number of user practice feedback, only one way is recommended, that is, using the **third-party STMP service** to send the email.

> Do not try to install **Sendmail** or other Mail server software on your Cloud Server for sending mail, because it is very difficulty in maintenance.

Follow is the sample using **SendGrid's SMTP Service** to configure sending mail for Metabase:

1. Log in SendGrid console, prepare your SMTP settings like the follow sample
   ```
   SMTP host: smtp.sendgrid.net
   SMTP port: 25 or 587 for unencrypted/TLS email, 465 for SSL-encrypted email
   SMTP Authentication: must be checked
   SMTP Encryption: must SSL
   SMTP username: websoft9smpt
   SMTP password: #fdfwwBJ8f    
   ```
2. Refer to [Official email setting](https://docs.graylog.org/en/3.3/pages/configuration/server.conf.html#email) by editing the email Graylog configuration file: */etc/graylog/server/server.conf*

3. Modify the items **[transport_email](https://docs.graylog.org/en/3.3/pages/configuration/server.conf.html#email)**  of Graylog configuration file

4. Restart Graylog service
   ```
   sudo docker restart graylog
   ```

More SMTP Service(Gmail, HotMail, QQ mail, Yahoo mail, SendGrid and so on)  settings or Issues with SMTP, please refer to Websoft9's *[SMTP Guide](https://support.websoft9.com/docs/faq/tech-smtp.html)*
