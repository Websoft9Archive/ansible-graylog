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
3. Bidding domain name in the Graylog configuration file: */etc/graylog/server/server.conf*
   ```
   # Specify and uncomment this if you want to include links to the stream in your stream alert mails.
   # This should define the fully qualified base url to your web interface exactly the same way as it is accessed by your users.
   #transport_email_web_interface_url = https://graylog.example.com

   Modify it to:
   transport_email_web_interface_url = https://graylog.yourdomain.com
   ```

4. Restart service
   ```
   sudo systemctl restart graylog-server
   sudo systemctl restart nginx
   ```
