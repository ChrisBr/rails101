#!/bin/bash
pushd /vagrant

echo -e "\ninstalling required software packages...\n"
zypper -q -n install update-alternatives ruby-devel make gcc gcc-c++ \
             libxml2-devel libxslt-devel nodejs sqlite3-devel imagemagick

echo -e "\ninstalling bundler...\n"
gem install bundler

echo -e "\ninstalling your bundle...\n"
su - vagrant -c "cd /vagrant/; bundle.ruby2.1 install --quiet"

