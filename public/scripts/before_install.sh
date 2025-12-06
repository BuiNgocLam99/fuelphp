#!/bin/bash
set -e

# Xóa thư mục tạm release trước đó
rm -rf /var/www/fuelphp/releases/tmp
mkdir -p /var/www/fuelphp/releases/tmp

# Tạo folder shared để giữ config và upload
mkdir -p /var/www/fuelphp/shared/logs
mkdir -p /var/www/fuelphp/shared/uploads
