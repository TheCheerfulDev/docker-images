# Elasticsearch 6.5.4

This docker images contains elasticsearch 6.5.1 with the trial license and X-pack security enabled. 

## Building the image

To build the image, use the following command:

```console
docker build -t thecheerfuldev/elasticsearch:6.5.4 .
```

Or run build.sh script.

## Running the image
To run the image in interactive mode, use the following command:

```console
docker run -it --name my-elasticsearch -p 9200:9200 -p 9300:9300 thecheerfuldev/elasticsearch:6.5.4
```

To run the image in detached mode, use the following command:

```console
docker run -d --name my-elasticsearch -p 9200:9200 -p 9300:9300 thecheerfuldev/elasticsearch:6.5.4
```

## Passwords

By default, all the systemusers will have the same password: "_secret_".

## Check server status

To check the server status, use the following command:

```console
curl -X GET "elastic:secret@localhost:9200/_cat/health"
```

## Example docker-compose

```yaml
version: '3'
services:
  elasticsearch:
    build:
      context: ./activated_elasticsearch
    image: thecheerfuldev/activated-elasticsearch:6.5.4
    container_name: cluster-elasticsearch
    environment:
      - node.name=elasticnode1
      - cluster.name=docker-cluster
      - bootstrap.memory_lock=true
      - xpack.security.enabled=true
      - xpack.monitoring.collection.enabled=true
      - "ES_JAVA_OPTS=-Xms1g -Xmx1g"
    ulimits:
      memlock:
        soft: -1
        hard: -1
    volumes:
      - esdata1:/usr/share/elasticsearch/data
    ports:
      - "9200:9200"
      - "9300:9300"
    networks:
      - esnet
        
volumes:
  esdata1:
    driver: local
  
networks:
  esnet:
```
