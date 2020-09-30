#créé un compte dont les données et les clés sont stocké dans le datadir 
geth -datadir "/home/sidoux/Desktop/dockereth" -dev account new

FROM Ubuntu

RUN apt-get install software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt update
RUN apt install ethereum

COPY . .

RUN geth account new
RUN geth account new
RUN ["geth", "--datadir", ""~/Library/LocalNode1"", "init", "genesis.json"]
RUN ["geth", "--datadir", ""~/Library/LocalNode2"", "init", "genesis.json"]

RUN ["geth", "--datadir", ""~/Library/LocalNode1"", "--networkid", "1234", "--port", "11111", "--nodiscover", "console"]