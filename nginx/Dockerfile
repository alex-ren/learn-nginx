FROM nginx

# For run as non-root
RUN sed -i 's/listen       80;/listen       8021;/g' /etc/nginx/conf.d/default.conf
RUN sed -i '/user  nginx;/d' /etc/nginx/nginx.conf
RUN     chown -R nginx:nginx /var/cache/nginx && \
        chown -R nginx:nginx /var/log/nginx && \
        chown -R nginx:nginx /etc/nginx/conf.d

RUN touch /var/run/nginx.pid && \
        chown -R nginx:nginx /var/run/nginx.pid

COPY html /usr/share/nginx/html

USER nginx:nginx


expose 8021
