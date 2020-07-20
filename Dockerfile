FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
COPY /index.html /var/www/html/index.html
COPY start.sh /start.sh
CMD ["/bin/bash" , "/start.sh"]
