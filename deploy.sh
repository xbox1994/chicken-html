#!/bin/bash
set -ex

echo '--------------------------start to deploy...--------------------------'
#scp -o StrictHostKeychecking=no -i /var/jenkins_home/nginx_private_key index.html vagrant@192.168.56.101:/data/nginx/html/index.html

docker login --username=xbox1993 --password 19930114
docker push xbox1993/chicken-html

ssh \
-o StrictHostKeychecking=no \
-i /var/jenkins_home/nginx_private_key \
vagrant@192.168.56.101 "sudo sh -c 'docker pull xbox1993/chicken-html; docker stop chicken-html-container; docker rm chicken-html-container; docker run --name=chicken-html-container -p 80:80 -d xbox1993/chicken-html'"

echo '--------------------------deploy finished ! --------------------------'