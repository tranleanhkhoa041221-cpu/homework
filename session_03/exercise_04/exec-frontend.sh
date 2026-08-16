#!/bin/bash
# Khởi chạy container nginx với biến môi trường
docker run -d --name rikkei-frontend-qa -e API_ENDPOINT=https://qa-api.rikkei.edu.vn nginx

# Mở shell bên trong container và in biến môi trường
docker exec -it rikkei-frontend-qa sh -c 'echo $API_ENDPOINT'

