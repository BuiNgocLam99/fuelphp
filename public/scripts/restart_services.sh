#!/bin/bash
set -e

systemctl reload php8.1-fpm || systemctl restart php8.1-fpm
systemctl reload nginx || systemctl restart nginx
