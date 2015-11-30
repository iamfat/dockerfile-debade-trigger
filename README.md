Docker Hub: genee/debade-trigger
===========
## DeBaDe Trigger Environment
```bash
docker build -t genee/debade-trigger .

#simple way
docker run -d -v /data/etc/debade:/etc/debade genee/debade-trigger
```

## RELEASE
* v0.1.8
    1. allow trigger to call RPC one-by-one.