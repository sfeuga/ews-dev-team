#!/bin/bash

# use to update your sfdc credentials in your local .env
# run : bash local_sfdc_credentials.sh your_heroku_app_name
# example : bash local_sfdc_credentials.sh eventws-qa

app=$1
dotenv=".env"

echo "Retrieve credentials for : ${app}"

client_id="SFDC_CLIENT_ID=$(heroku config:get SFDC_CLIENT_ID -a ${app})"
client_secret="SFDC_CLIENT_SECRET=$(heroku config:get SFDC_CLIENT_SECRET -a ${app})"
sfdc_username="SFDC_USERNAME=$(heroku config:get SFDC_USERNAME -a ${app})"
sfdc_password="SFDC_PASSWORD=$(heroku config:get SFDC_PASSWORD -a ${app})"
sfdc_token="SFDC_SECURITY_TOKEN=$(heroku config:get SFDC_SECURITY_TOKEN -a ${app})"
sfdc_host="SFDC_HOST=test.salesforce.com"

credentials=( 
  ${client_id} ${client_secret} ${sfdc_username} ${sfdc_password} ${sfdc_token}
  ${sfdc_host} 
)

echo "### ${app} sfdc credentials ###" >> ${dotenv}

for i in ${credentials[@]}; do
    echo $i >> ${dotenv}
done
