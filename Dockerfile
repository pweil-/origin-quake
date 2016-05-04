FROM fedora:latest

RUN dnf install -y nginx git && \
    dnf clean all && \
    git clone https://github.com/3angel/WebQuake && \
    cp -R /WebQuake/Client/* /usr/share/nginx/html/.

ADD conf/ /etc/nginx/
ADD id1 /usr/share/nginx/html/id1/
CMD ["nginx"]
