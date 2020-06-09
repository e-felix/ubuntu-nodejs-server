# BASIC UBUNTU NODEJS DOCKER IMAGE

## Build image

```sh
docker build --build-arg -t ubuntu-nodejs-server .
```

## Run container

Run and launch server

```sh
docker run -it --name ubuntu-nodejs-server -v $(pwd):/var/www/ -p 3000:3000 ubuntu-nodejs-server
```

Run interactively

```sh
docker run -it --name ubuntu-nodejs-server -v $(pwd):/var/www/ -p 3000:3000 ubuntu-nodejs-server bash
```

## Website URL

```
http://localhost:3000
```

## Docker Compose usage


From Dockerfile

```yaml
version: "3.8"
services:
  web:
    build:
      context: .
    ports:
      - "3000:3000"
    volumes:
      - .:/var/www/

    # optional if you want an intereactive login shell
    stdin_open: true
    tty: true
```

From Docker hub

```yaml
version: "3.8"
services:
  web:
    image: erwinfelix/ubuntu-nodejs-server
    ports:
      - "3000:3000"
    volumes:
      - .:/var/www/

    # optional if you want an intereactive login shell
    stdin_open: true
    tty: true
```
