#!/bin/bash
app=$1
tag=${2:-latest}
port=${3:-8080}
namespace=${4:-dev}
echo $0 $app $tag $port $namespace

if [ "x${app}" = "x" ];then
   echo $0  '<app name> <tag> <port> <namespace>';
   exit 1;
fi

cd "$( dirname "$0"  )"
pwd
rm config -rf
cp template config -a
sed -i "s/{APPNAME}/$app/g;s/{TAG}/$tag/g;s/{PORT}/$port/g;s/{NAMESPACE}/$namespace/g" `find config -type f`
