# Initial Installation

If you have completed the Graylog deployment on Cloud Platform, the following steps is for you to start use it quikly

## Preparation

1. Get the **Internet IP** on your Cloud Platform
2. Check you **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the TCP:80 is allowed
3. Make a domain resolution on your DNS Console if you want to use domain for Graylog

## Graylog Installation Wizard

1. Using local Chrome or Firefox to visit the URL *http://DNS* or *http://Internet IP*, you will enter installation wizard of Graylog. You must configure Domain Name for Graylog first.
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/graylog/graylog-initwizard-websoft9.png)

   * **Configure Domain Name by script**

     1. Connect your Graylog Server and run the command below
        ```
        bash /etc/graylog/config_domain.sh
        ```

     2. If you input a incorrect Domain Name on the below step, please refer to **Configure Domain Name by manual** to fix it

   
   * **Configure Domain Name by manual**

     1. Bidding domain name in the graylog configuration file: */etc/graylog/server/server.conf*
        ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/graylog/graylog-biddns-websoft9.png)
     
     2. Bidding domain name in the Nginx configuration file: */etc/nginx/sites-available/default*
        ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/graylog/graylog-nginx-websoft9.png)

     3. Restart service
        ```
        sudo systemctl restart graylog-server
        sudo systemctl restart nginx
        ```

2. Log in to Graylog web console([Don't have password?](/stack-accounts.md#graylog))  
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/graylog/graylog-login-websoft9.png)

3. Start the experience of Graylog now
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/graylog/graylog-adminui-websoft9.png)

> More useful Graylog guide, please refer to [Configuring Graylog](https://docs.graylog.org/en/3.3/pages/configuration.html)

## Q&A

#### I can't visit the start page of AWX?

Your TCP:80 of Security Group Rules is not allowed so there no response from Chrome or Firefox

#### Can I use Graylog without Domain Name?

No, you must configure Domain Name for Graylog, otherwise it not work

#### I want to modify my Domain Name?

You can modify Domain Name by */etc/nginx/sites-available/default* and */etc/graylog/server/server.conf*