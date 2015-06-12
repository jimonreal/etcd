#!/bin/sh
apk -U upgrade
apk add lua-curl
curl -L  https://github.com/coreos/etcd/releases/download/v2.0.11/etcd-v2.0.11-linux-amd64.tar.gz -o /tmp/etcd-v2.0.11-linux-amd64.tar.gz
tar xzvf /tmp/etcd-v2.0.11-linux-amd64.tar.gz
cp /tmp/etcd-v2.0.11-linux-amd64/etcd /bin/etcd
apk del lua-curl
rm -rf /var/cache/apk/*

