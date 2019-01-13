# docker-apache-musicindex

-	[`latest` (*Dockerfile*)](https://github.com/angelnu/docker-apache-musicindex/blob/master/Dockerfile)

[![](https://badge.imagelayers.io/angelnu/apache-musicindex:latest.svg)](https://imagelayers.io/?images=angelnu/apache-musicindex:latest 'Get your own badge on imagelayers.io')

Apache mod music index server running in Ubuntu Linux container

# How to use this image

```console
docker run -ti --rm -p 8080:80 --name musicindex -v $(pwd):/music -v /tmp:/cache angelnu/apache-musicindex:latest
```
This will start a web server listening on the default port of 8080.
Then access it via `http://localhost:8080` or `http://host:8080` in a browser.

This server will serve files located in your /media folder

Image's supported volumes:
- `/music` - served directory
