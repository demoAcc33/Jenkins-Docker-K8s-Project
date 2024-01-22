FROM  ubuntu:latest
LABEL maintainer="chrisjonathanav@gmail.com"
RUN apt-get update
RUN mkdir demo1
RUN cd demo1/
RUN touch notes1.txt
RUN echo Hello > notes1.txt
RUN cat notes1.txt
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

