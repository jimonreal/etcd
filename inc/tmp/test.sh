#!/bin/sh
echo --- Tests ---

echo -n "It should install etcd 2.0.11..."
etcd --version|grep "etcd Version"|grep "2.0.11" > /dev/null
[ "$?" -ne 0 ] && echo nope && exit 1
echo ok

