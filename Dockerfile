FROM fedora
#this will be base image
MAINTAINER Rishi
#devinfo
ARG web=httpd
#this ARG  variable web  will not be present in container
ENV server=$web
ENV color=black
#all env variable will be present in the container
RUN yum install $server -y
#install httpd web server as default
#WORKDIR /var/www/html
WORKDIR /opt
# it will be changing current directory in the container
COPY .  .
# it will copy all the data to docker image
EXPOSE 80
# exposing port in the container
ENTRYPOINT ["/bin/bash","/opt/entrypoint.sh"] 

