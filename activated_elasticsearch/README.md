# Elasticsearch 6.5.1

This docker images contains elasticsearch 6.5.1 with the trial license and xpack security enabled. 

## Building the image

To build the image, use the following command:

```console
docker build -t rovingeye/elasticsearch:latest .
```

Or run build.sh script.

## Running the image
To run the image in interactive mode, use the following command:

```console
docker run -it --name myserver -p 9200:9200 -p 9300:9300 rovingeye/elasticsearch:latest
```

To run the image in detached mode, use the following command:

```console
docker run -d --name myserver -p 9200:9200 -p 9300:9300 rovingeye/elasticsearch:latest
```

## Passwords

By default, all the systemusers will have the same password: "_secret_".

## Check server status

To check the server status, use the following command:

```console
curl -X GET "elastic:secret@localhost:9200/_cat/health"
```