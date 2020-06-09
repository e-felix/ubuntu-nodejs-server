# BASIC UBUNTU NODEJS DOCKER IMAGE

## Build image

```sh
docker build --build-arg appfolder={appfolder} -t ubuntu-nodejs-server .
```

### Arguments

- appfolder: the name of the application's folder if image is built in parent folder

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

```yaml
version: "3.8"
services:
  web:
    build:
      context: .
      args:
        appfolder: {appfolder}
  ports:
    - "3000:3000"
  volumes:
    - .:/var/www/

  # optional if you want an intereactive login shell
  stdin_open: true
  tty: true
```
