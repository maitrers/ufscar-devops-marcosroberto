FROM nginx:1.17.0-alpine

LABEL maintainer="Marcos Roberto <maitrers@yahoo.com.br>"


 COPY ./arquivos /usr/share/nginx/html

 #COPY ./web-proxy/localhost.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]




