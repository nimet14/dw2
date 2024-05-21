FROM httpd:2.4

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y apache2

COPY html /var/www/html/

RUN date > /var/www/html/buildtime.txt

WORKDIR /var/www/html/

EXPOSE 80

CMD service apache2 start && bash