#!/bin/bash
# Tạo thư mục dự án
sudo mkdir -p /opt/quickbite/user-service

# Đổi chủ sở hữu cho toàn bộ thư mục
sudo chown -R quickbite:quickbite /opt/quickbite

# Đặt quyền hạn truy cập
sudo chmod 750 /opt/quickbite

# Ý nghĩa chmod 750:
# - Chủ sở hữu có toàn quyền (rwx)
# - Nhóm có quyền đọc và thực thi (r-x)
# - Người khác không có quyền gì (---)

