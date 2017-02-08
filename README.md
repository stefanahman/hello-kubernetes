# hello_kubernetes
=====

Cowboy web application to be used in the kubernetes test

## Local setup (wihout Docker)

    $ rebar3 run

## Docker setup

    $ docker build -t -d hello_kubernetes Dockerfile
    $ docker run -it -v [PATH-TO-THIS-REPO]:/code/ -p 8080:8080 hello_kubernetes:latest /bin/bash
    $ cd /code; rebar3 run # To be automated

## Access the app

    $ curl -v localhost:8080/hello
