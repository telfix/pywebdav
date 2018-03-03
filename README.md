# pywebdav
Super Simple WebDAV Server, using python and wsgidav

# Why?
Sometimes you need to access files on linux machines with a windows client. For example when developing on a remote linux server running everything in docker containers. Now things get complicated really fast:
1. NFS is deprecated on Windows
2. WinSshFS is complicated to install and sometimes very unstable
3. SMB/CIFS can only run once per server. Windows is not able to connect to non standard ports
4. sync/unisono/rsync/dropbox/<name-your-sycn-tool-here> is either to slow or unable to handle conflicts well
5. Windows is sometimes unable to connect to Apaches WebDAV implementation

# Example usage:

## Plain docker:
Export current working dir and make it accessible via http://*docker-host-ip*:2345
```
docker run -t -p 2345:80 -v ${PWD}:/share telfix/pywebdav
```

## docker-compose:
docker-compose.yml
```
version: '3'
services:
  webdav:
    image: telfix/pywebdav
    volumes:
      - ./:/share
    ports:
      - 2345:80
```
start with
```
docker-compose up webdav
```

# Additional help:
How to mount WebDAV on windows 10: https://www2.le.ac.uk/offices/itservices/ithelp/my-computer/files-and-security/work-off-campus/webdav/webdav-on-windows-10

# Who?
Hi, we are TELFIX GmbH, a small Software Company located in Vienna, Austria. We love to develop things for the Web, IOT, Cryptocurrencies, Telecommunications, Embedded Systems, Mobile Phones, Games and much much more. We dont feel really nerdy or geeky, but others are saying we are :)
