FROM centos
RUN yum install httpd -y
RUN yum install wget -y
RUN yum install unzip -y
CMD wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
CMD echo "rm -rf /var/run/httpd/*" >> ~/.bashrc 
CMD echo "httpd" >> ~/.bashrc
CMD httpd
COPY index.html /var/www/html
COPY assets /var/www/html
CMD unzip ngok-stable-linux-amd64.zip
CMD ./ngrok http 80
