FROM python:latest

MAINTAINER Bert <bert@3sign.com>

RUN pip install redis && pip install mockredispy

ADD src/ /src/

WORKDIR /src/

ENTRYPOINT python3 -m unittest
