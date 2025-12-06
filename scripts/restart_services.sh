#!/bin/bash
set -e

systemctl reload php7.2-fpm || systemctl restart php7.2-fpm
systemctl reload nginx || systemctl restart nginx
