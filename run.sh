#!/bin/bash

docker run -d --name node1 --rm -p 80:80 -m 64m multichain-lab
sleep 2
docker logs node1
sleep 5
docker run -d --name node2 --rm -e MC_FIRST=chain1@172.17.0.2:2510 multichain-lab
sleep 2
docker logs node2
docker exec -it node1 bash
