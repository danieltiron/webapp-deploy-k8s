# Deploy webapp with kubernetes

This repo is an example in how to deploy a basic webapp with PHP7, Apache, MySql using Minikube.

## How to use it
Change placeholders with your values:

`<AWS_VOLUME_ID>` from mysql.yaml

`<FULL_PATH_TO_WEBAPP_FOLDER>`, `<FULL_PATH_TO_APACHE_CONFIG_FROM_WEBSERVER_SETUP_FOLDER>` from php.yaml

`<BASE64_ENCRYPTED_CRT_FILE>`, `<BASE64_ENCRYPTED_KEY_FILE>` from secrets.yaml

Using Makefile type:

`make deploy` to deploy application

`make help` for more details

Add minikiube ip in hosts file to point webapp.local

After the deploy is done you can access: https://webapp.local