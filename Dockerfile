FROM ubuntu 
MAINTAINER naitsider (a.naitsider@gmail.com)
RUN apt-get update 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
#ADD /satic-website-example-master/ /var/www/html/ 
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/naitsider/satic-website-example-master/  /var/www/html/
EXPOSE 80
CMD  ["nginx" , "-g" , "daemon off;"] 


