FROM openjdk:8

WORKDIR /ftb_server

RUN apt-get update \
 && wget -q -O server.zip https://www.feed-the-beast.com/projects/ftb-infinity-evolved/files/2484486/download \
 && unzip -q server.zip \
 && rm server.zip \
 && sed -i 's/false/true/g' eula.txt \
 && chmod +x ServerStart.sh \
 && rm -rf /var/lib/apt/lists/*

VOLUME /ftb_server/world/

EXPOSE 25565

CMD ["/ftb_server/ServerStart.sh"]