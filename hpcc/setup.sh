#!/bin/bash

wget http://cdn.hpccsystems.com/releases/CE-Candidate-5.2.2/bin/platform/hpccsystems-platform-community_5.2.2-1trusty_amd64.deb
dpkg -i hpccsystems-platform-community_5.2.2-1trusty_amd64.deb
apt-get install -f -y
service hpcc-init start
exit 0
# generate config
service hpcc-init stop
# service dafilesrv stop
sudo -u hpcc cp /etc/HPCCSystems/source/eha.xml /etc/HPCCSystems/environment.xml
/opt/HPCCSystems/sbin/install-cluster.sh -k hpccsystems-platform-community_5.2.2-1trusty_amd64.deb
/opt/HPCCSystems/sbin/hpcc-push.sh -s /etc/HPCCSystems/environment.xml -t /etc/HPCCSystems/environment.xml -x
/opt/HPCCSystems/sbin/hpcc-run.sh -a hpcc-init start