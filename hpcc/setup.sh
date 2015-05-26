#!/bin/bash

wget http://cdn.hpccsystems.com/releases/CE-Candidate-5.2.2/bin/platform/hpccsystems-platform-community_5.2.2-1trusty_amd64.deb
dpkg -i hpccsystems-platform-community_5.2.2-1trusty_amd64.deb
# apt-get install -f
service hpcc-init start