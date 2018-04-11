# Deploy webapp with kubernetes

This repo is an example in how to deploy a basic webapp with PHP7, Apache, MySql using Minikube.

## How to use it
Change placeholders with your values:
`<AWS_VOLUME_ID>` from mysql.yaml
`FULL_PATH_TO_WEBAPP_FOLDER`, `FULL_PATH_TO_APACHE_CONFIG_FROM_WEBSERVER_SETUP_FOLDER` from php.yaml

Using Makefile type:

`make deploy` to deploy application

`make help` for more details

After the deploy is done you can access: http://192.168.99.100:32080/