FROM nginx:1.9
MAINTAINER Julian Waller <git@julusian.co.uk>

ADD default.conf /etc/nginx/sites-enabled/default
ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]