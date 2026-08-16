#!/bin/bash
# Tạo user mới cho Rikkei LMS
sudo useradd -m rikkeilms

# Tạo thư mục gốc cho course-service
sudo mkdir -p /opt/rikkei/course-service

# Chuyển quyền sở hữu cho user rikkeilms
sudo chown -R rikkeilms:rikkeilms /opt/rikkei/course-service

# Thiết lập quyền hạn cho thư mục
sudo chmod 755 /opt/rikkei/course-service

# Kiểm tra kết quả
ls -ld /opt/rikkei/course-service

