#!/usr/bin/env

set -x

yum install -y salt-minion

systemctl enable salt-minion
