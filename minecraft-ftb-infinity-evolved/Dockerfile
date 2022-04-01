FROM eclipse-temurin:8-jre

WORKDIR /ftb_server

RUN apt-get update \
 && apt-get install wget -y \
 && apt-get install unzip -y \
 && wget -q -O server.zip https://edge.forgecdn.net/files/2731/545/FTBInfinityServer_3.1.0.zip \
 && unzip -q server.zip \
 && rm server.zip \
 && sed -i 's/false/true/g' eula.txt \
 && chmod +x ServerStart.sh \
 && rm -rf /var/lib/apt/lists/*

VOLUME /ftb_server/world/

EXPOSE 25565

CMD ["/ftb_server/ServerStart.sh"]