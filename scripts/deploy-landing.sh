#!/bin/bash
# deploys landing page to /var/www/qrr_codes/html/
rm -rf /var/www/qrr_codes/html/
cp -R ../landing/html/ /var/www/qrr_codes/html/