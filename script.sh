#!/bin/bash

AWS_ACCESS_KEY=$1
AWS_SECRET_KEY=$2
AWS_CODEARTIFACT_DOMAIN=$3
AWS_CODEARTIFACT_OWNER=$4
AWS_REGION=$5

echo "aws_access_key_id = $AWS_ACCESS_KEY" >> ~/.aws/credentials
echo "aws_secret_access_key = $AWS_SECRET_KEY" >> ~/.aws/credentials
TOKEN=`aws codeartifact get-authorization-token --domain $AWS_CODEARTIFACT_DOMAIN --domain-owner $AWS_CODEARTIFACT_OWNER --region $AWS_REGION --query authorizationToken --output text`
echo "codeartifact_token=$TOKEN" >> $GITHUB_OUTPUT

