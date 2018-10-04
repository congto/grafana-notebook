#!/bin/bash

mkdir ~/grafana && cd grafana
wget https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana-5.2.4-1.x86_64.rpm
sudo yum localintsall grafana-5.2.4-1.x86_64.rpm
sudo systemctl start grafana-server
sudo systemctl enable grafana-server

# Server side image rendering
sudo yum install fontconfig
sudo yum install freetype*
sudo yum install urw-fonts
