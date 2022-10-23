FROM ubuntu:latest
WORKDIR /space

RUN apt update
RUN apt install -y groff less curl unzip
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
COPY config /root/.aws/config
COPY credentials /root/.aws/credentials
COPY script.sh .

ENTRYPOINT ["/space/script.sh"]