FROM amazon/aws-cli:latest
WORKDIR /space

COPY config /root/.aws/config
COPY credentials /root/.aws/credentials
COPY script.sh .

ENTRYPOINT ["/space/script.sh"]

