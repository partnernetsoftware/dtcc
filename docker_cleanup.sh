#!/bin/sh

#Remove all stopped containers.
docker rm $(docker ps -a -q)

#Remove all untagged images
#docker rmi -f $(docker images -a | grep "^<none>" | awk "{print \$3}")
untagged=$(docker images -a | grep "^<none>" | awk "{print \$3}")
for val in $untagged; do
	tormi=$(docker images -a -q --filter since=$val)
	echo $tormi
	docker rmi -f $tormi
done
docker rmi -f $untagged
docker images -a
