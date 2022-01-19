# base image
FROM ubuntu

# install nginx 
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install nginx

# expose port
EXPOSE 80

# COPY
COPY todo-app/index.html /var/www/html/index.html
COPY todo-app/style.css /var/www/html/style.css
COPY todo-app/script.js /var/www/html/script.js

# execute the nginx
CMD ["nginx", "-g", "daemon off;"]