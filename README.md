Docker Hub: genee/debade-courier
===========
## DeBaDe Courier Environment
```bash
docker build -t genee/debade-courier .

#simple way
export BASE_DIR=/mnt/sda1/data
docker run -d -v /data/etc/debade:/etc/debade genee/debade-courier
```
