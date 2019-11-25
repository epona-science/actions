FROM ubuntu:latest

WORKDIR /code/ 
COPY . /code/

RUN apt-get update
RUN apt-get install -y curl wget
RUN chmod +x clickup-action.sh

ENTRYPOINT ["/code/clickup-action.sh"]
