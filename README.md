# docker-ngircd

NGIRCD Docker Image Next Generation IRC Daemon

This version is forked from [rbjarnason/docker-ngircd](https://github.com/rbjarnason/docker-ngircd)

## Usage

```session
docker build -t uetchy/ngircd .
docker run --name ngircd -d \
  -p 6667:6667 \
  -e "NGIRCD_NAME=irc.randompaper.co" \
  -e "NGIRCD_INFO=Random Paper internal irc server" \
  -e "NGIRCD_PASSWORD=password" \
  -e "NGIRCD_MOTD_PHRASE='Welcome'" \
  uetchy/ngircd
```
