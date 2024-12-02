#!/bin/bash
REPOSITORY=/home/ubuntu/

cd $REPOSITORY/do_it_django

echo "> 🔵 Stop & Remove docker services."
sudo docker-compose down

echo "현재 디렉토리: $(pwd)"

echo "> 🟢 Run new docker services."
sudo docker-compose up -d --build >> /var/log/deploy.log 2>&1

echo "스크립트 종료"

