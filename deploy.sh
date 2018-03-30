#!/bin/bash
echo '--------------------------start to deploy...--------------------------'
#scp -o StrictHostKeychecking=no -i /var/jenkins_home/nginx_private_key index.html vagrant@192.168.56.101:/data/nginx/html/index.html

docker push xbox1994/chicken-html

ssh \
-o StrictHostKeychecking=no 
-i /var/jenkins_home/nginx_private_key 
sh -c 'docker pull xbox1994/chicken-html || docker stop chicken-html-container || docker rm chicken-html-container || docker run --name=chicken-html-container -d chicken-html'

echo '--------------------------deploy finished ! --------------------------'