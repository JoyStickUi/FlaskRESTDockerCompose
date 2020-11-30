FROM ubuntu:latest
WORKDIR ./FlaskREST
COPY requirements.txt requirements.txt
RUN apt-get update \
&& apt-get install -y python3-pip python3-dev libmysqlclient-dev \
&& pip3 install -r requirements.txt \
&& pip3 install mysqlclient
