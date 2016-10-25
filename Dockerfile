FROM ubuntu
MAINTAINER BitBuyIO <developer@bitbuy.io>
LABEL description="running lbrycrd using docker container by http://bit.ly/docker-minergate"

RUN apt-get update && \
    apt-get install -y ca-certificates wget unzip && \
    rm -rf /var/lib/apt/lists/*


RUN wget https://github.com/lbryio/lbrycrd/releases/download/v0.3.16/lbrycrd-linux.zip && \
    unzip lbrycrd-linux.zip -d /usr/local/bin
 
RUN chmod a+x /usr/local/bin/*

ENV HOME /lbrycrd
VOLUME ["/lbrycrd"]
EXPOSE 19000 19001

WORKDIR /lbrycrd
