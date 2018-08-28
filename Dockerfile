FROM nginx:latest

RUN rm -rf /etc/nginx/sites-enabled/*
COPY nginx.conf /etc/nginx/conf.d/rolldeeper.conf
RUN  echo "\ndaemon off;" >> /etc/nginx/nginx.conf
#COPY gzip.conf /etc/nginx/nginx.conf
CMD ["nginx"]

EXPOSE 80