FROM Ubuntu

RUN apt-get install software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt update
RUN apt install ethereum