#!/bin/bash
# initial-script.sh - Thiết lập môi trường QuickBite

# 1. Cập nhật hệ thống
sudo apt-get update && sudo apt-get upgrade -y

# 2. Cài đặt các gói phần mềm bắt buộc
sudo apt-get install -y openjdk-17-jdk git curl

# 3. Kiểm tra sự tồn tại của group quickbite
if ! getent group quickbite > /dev/null; then
    sudo groupadd quickbite
    echo "Group quickbite đã được tạo."
else
    echo "Group quickbite đã tồn tại."
fi

# 4. Tạo user quickbite với ràng buộc bảo mật
if ! id "quickbite" &>/dev/null; then
    sudo useradd -r -g quickbite -s /bin/false quickbite
    echo "User quickbite đã được tạo."
else
    echo "User quickbite đã tồn tại."
fi

