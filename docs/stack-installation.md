# Initial Installation

If you have completed the Graylog deployment on Cloud Platform, the following steps is for you to start use it quikly

## Preparation

1. Get the **Internet IP** on your Cloud Platform
2. Check you **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the TCP:80 is allowed
3. Make a domain resolution on your DNS Console if you want to use domain for Graylog

## Graylog Installation Wizard

1. Using local Chrome or Firefox to visit the URL *http://DNS* or *http://Server's Internet IP*, you can see the login page of Graylog.
   ![login Graylog websoft9](https://libs.websoft9.com/Websoft9/DocsPicture/en/graylog/graylog-login-websoft9.png)

2. Input the login account and enter to Graylog Console([Don't have password?](/stack-accounts.md#graylog))  
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/graylog/graylog-console-websoft9.png)

3. if you want to bind domain for Graylog, refer to [here](/solution-more.md#domain-binding)

> More useful Graylog guide, please refer to [Configuring Graylog](https://docs.graylog.org/en/latest/pages/configuration.html)

## Q&A

#### I can't visit the start page of AWX?

Your TCP:80 of Security Group Rules is not allowed so there no response from Chrome or Firefox

#### Can I use Graylog without Domain Name?

No, you must configure Domain Name for Graylog, otherwise it not work

#### I want to modify my Domain Name?

You can modify Domain Name by */etc/nginx/sites-available/default* and */etc/graylog/server/server.conf*