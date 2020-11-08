#!/bin/bash
# update the changes (make sure to run npm run-script build and zip dist.zip to frontend folder)
git pull
# clean html folder
rm -rf /var/www/qrr_codes/html/*
# copy over zip to staging area
cp -R ../frontend/dist.zip /var/www/qrr_codes/
# change directory to staging area
cd /var/www/qrr_codes/
# unzip to staging
unzip /var/www/qrr_codes/dist.zip 
# deploy code to /var/www/qrr_codes/html/
cp -R dist/* /var/www/qrr_codes/html/