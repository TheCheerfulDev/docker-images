# Minecraft Feed The Beast Infinity Evolved 3.0.2

This docker images contains FTB Infinity Evolved 3.0.2 server. This docker image should only be used to give the server a try, since the block lag will kick in pretty fast.

## Building the image

To build the image, use the following command:
```console
docker build -t ftbserver:3.0.2 .
```
Or run build.sh script.

## Running the image
To run the image in interactive mode, use the following command:
```console
docker run -it --name myserver -p 25565:25565 ftbserver:3.0.2
```

To run the image in detached mode, use the following command:
```console
docker run -d --name myserver -p 25565:25565 ftbserver:3.0.2
```

To attach a folder to the world volume, use the following command:
```console
docker run -it --name myserver -p 25565:25565 -v <your folder>:/ftb_server/world/ ftbserver:3.0.2
```