#!/bin/bash
scp -o StrictHostKeychecking=no index.html -i /var/jenkins_home/nginx_private_key vagrant@192.168.56.102:/tmp/nginx/html