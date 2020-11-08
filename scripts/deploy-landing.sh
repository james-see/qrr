#!/bin/bash
# update the changes
git pull
# clean html folder
rm -rf /var/www/qrr_codes/html/
# deploys landing page to /var/www/qrr_codes/html/
cp -R ../landing/html/ /var/www/qrr_codes/html/