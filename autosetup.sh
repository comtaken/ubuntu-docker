#!/bin/sh

file="./docker-compose.yml"

if [ -e $file ]; then
        chmod 777 ./html \
	&& eval sudo apt update \
        && eval sudo apt install apt-transport-https ca-certificates curl software-properties-common \
        && eval sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - \
        && eval sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" \
        && eval sudo apt-get install git \
        && eval sudo apt update \
        && eval sudo apt-cache policy docker-ce \
        && eval sudo apt install docker-ce \
        && eval sudo systemctl status docker \
	&& eval sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
	&& eval sudo chmod +x /usr/local/bin/docker-compose \
	&& eval sleep 5s \
	&& eval docker-compose up -d \
        && echo "完了しました。"
else
        echo "docker-compose.ymlは存在しません"
fi
