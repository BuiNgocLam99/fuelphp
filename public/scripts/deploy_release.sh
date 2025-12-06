#!/bin/bash
set -e

timestamp=$(date +%Y%m%d%H%M%S)
release_dir="/var/www/fuelphp/releases/$timestamp"

# Tạo folder release
mkdir -p $release_dir

# Move code sang release
mv /var/www/fuelphp/releases/tmp/* $release_dir/

# Symlink shared vào FuelPHP structure
ln -sfn /var/www/fuelphp/shared/logs $release_dir/fuel/app/logs
ln -sfn /var/www/fuelphp/shared/uploads $release_dir/public/uploads

# Cài vendor
cd $release_dir
php composer.phar install --no-dev --optimize-autoloader

# Update symlink current
ln -sfn $release_dir /var/www/fuelphp/current
