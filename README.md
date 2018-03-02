# pywebdav
simple webdav server, using python and wsgidav

## example usage:

```
export current working dir and make it accessible via http://<docker-host-ip>:2345
docker run -t -p 2345:80 -v ${PWD}:/share thelittlebug/pywebdav
```
