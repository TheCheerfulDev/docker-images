FROM docker.elastic.co/elasticsearch/elasticsearch:6.5.4

COPY ./scripts/set_passwords.sh /scripts/set_passwords.sh
RUN yum -y -q install expect
RUN echo "xpack.license.self_generated.type: trial" >> /usr/share/elasticsearch/config/elasticsearch.yml
RUN echo "xpack.security.enabled: true" >> /usr/share/elasticsearch/config/elasticsearch.yml
RUN runuser -l elasticsearch -c 'export JAVA_HOME=/opt/jdk-11.0.1 && /usr/share/elasticsearch/bin/elasticsearch -d' \
     && sleep 15 \
     && /scripts/set_passwords.sh \