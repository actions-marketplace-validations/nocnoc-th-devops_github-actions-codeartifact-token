#!/bin/bash

AWS_CODEARTIFACT_DOMAIN=$1
AWS_CODEARTIFACT_OWNER=$2
AWS_REGION=$3

echo "aws_access_key_id = $4" >> /root/.aws/credentials
echo "aws_secret_access_key = $5" >> /root/.aws/credentials

TOKEN=`aws codeartifact get-authorization-token --domain $AWS_CODEARTIFACT_DOMAIN --domain-owner $AWS_CODEARTIFACT_OWNER --region $AWS_REGION --query authorizationToken --output text`
echo "codeartifact_token=$TOKEN" >> $GITHUB_OUTPUT

