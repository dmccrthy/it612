# Participation: AWK (IT-612)

## grep:

Below is the command I used to grep for a specific IP:

```shell
grep "192.168.1.10" log.txt
```

This is the result I got:

```
192.168.1.10 - - [01/Apr/2026:09:15:22] "GET /index.html" 200 1024
192.168.1.10 - - [01/Apr/2026:09:16:01] "GET /dashboard" 200 4096
```

## sed:

Below is the command I used to update POST to GET:

```shell
sed "s/\"POST/\"GET/g" log.txt
```

This is what is gave me back:

```
192.168.1.10 - - [01/Apr/2026:09:15:22] "GET /index.html" 200 1024
192.168.1.15 - - [01/Apr/2026:09:15:25] "GET /api/users" 500 312
10.0.0.5 - - [01/Apr/2026:09:15:30] "GET /login" 401 215
192.168.1.10 - - [01/Apr/2026:09:16:01] "GET /dashboard" 200 4096
10.0.0.5 - - [01/Apr/2026:09:16:05] "GET /login" 401 215
10.0.0.5 - - [01/Apr/2026:09:16:12] "GET /login" 200 512
192.168.1.15 - - [01/Apr/2026:09:17:00] "GET /api/users" 500 312
192.168.1.20 - - [01/Apr/2026:09:17:30] "GET /about" 404 128
```

##  AWK:

Below is the command I ran to extract the date and endpoint of POST requests:

```shell
awk '/"POST/ { print $4 " " $6 }' log.txt
```

The output I got is also shown below:

```
[01/Apr/2026:09:15:30] /login"
[01/Apr/2026:09:16:05] /login"
[01/Apr/2026:09:16:12] /login"
```