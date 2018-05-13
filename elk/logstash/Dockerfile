# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash-oss:6.2.4

# Add your logstash plugins setup here
# Some useful plugins have already been added
RUN logstash-plugin install logstash-patterns-core \
 && logstash-plugin install logstash-filter-date \
 && logstash-plugin install logstash-filter-grok
