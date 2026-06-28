FROM ubuntu:22.04 

LABEL maintainer="bandinithishroyal@gmail.com"  version="1.0"

WORKDIR /app

COPY . /app

RUN apt-get update && \
    apt-get install -y nginx

CMD ["nginx", "-g", "daemon off;"]
