#!/bin/bash
app=$1
tag=${2:-latest}
docke_host=${3:-10.6.136.80:443}
if [ "x${app}" = "x" ];then
   echo $0  '<appname> <tag>';
   exit 1;
fi
echo $app $tag 
registry=${docke_host}/library
cp Dockerfile.in Dockerfile.out
echo $app $tag $docke_host $nexus_host
docker build -t $app:$tag -f Dockerfile.out .  && 
        docker tag $app:$tag $registry/$app:$tag  && 
        docker push $registry/$app:$tag 
