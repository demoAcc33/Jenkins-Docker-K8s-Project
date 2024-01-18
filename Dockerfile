FROM  ubuntu:latest
RUN apt-get update
RUN mkdir demo1
RUN cd demo1/
RUN touch notes1.txt
