% Environnement Java 8  
% Didier Richard  
% 2018/09/09

---

revision:
    - 1.0.0 : 2018/09/09

---

# Building #

```bash
$ docker build -t dgricci/java:$(< VERSION) .
$ docker tag dgricci/java:$(< VERSION) dgricci/java:latest
```

## Behind a proxy (e.g. 10.0.4.2:3128) ##

```bash
$ docker build \
    --build-arg http_proxy=http://10.0.4.2:3128/ \
    --build-arg https_proxy=http://10.0.4.2:3128/ \
    -t dgricci/java:$(< VERSION) .
$ docker tag dgricci/java:$(< VERSION) dgricci/java:latest
```

# Use #

See `dgricci/stretch` README for handling permissions with dockers volumes.

```bash
$ docker run --rm dgricci/java:$(< VERSION)
openjdk version "1.8.0_181"
OpenJDK Runtime Environment (build 1.8.0_181-8u181-b13-1~deb9u1-b13)
OpenJDK 64-Bit Server VM (build 25.181-b13, mixed mode)
```

__Et voilà !__


_fin du document[^pandoc_gen]_

[^pandoc_gen]: document généré via $ `pandoc -V fontsize=10pt -V geometry:"top=2cm, bottom=2cm, left=1cm, right=1cm" -s -N --toc -o java.pdf README.md`{.bash}
