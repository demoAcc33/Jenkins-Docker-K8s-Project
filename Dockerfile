FROM  ubuntu:latest
LABEL maintainer="chrisjonathanav@gmail.com"
RUN apt-get update
RUN mkdir demo1
RUN cd demo1/
RUN touch notes1.txt
RUN echo Hello > notes1.txt
RUN cat notes1.txt
RUN apt-get update
RUN apt-get install apache2
RUN netstat -tulpn | grep :80
