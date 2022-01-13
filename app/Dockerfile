FROM ubuntu:16.04
RUN apt-get -y update
RUN apt-get -y install apache2

ARG GIT_COMMIT=unspecified
LABEL git_commit=$GIT_COMMIT

COPY ./index.html /home/ubuntu/testDocker/
RUN echo index.html > /var/www/html/index.html
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80