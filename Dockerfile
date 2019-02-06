FROM nginx:stable

COPY . /var/www/
COPY ./nginx.conf /etc/nginx/conf.d/default.conf.template

ENV uri \$uri

# To be used when k8s not injecting env variable for host
# ENV DETECTOR_ADDRESS "http://localhost:8000/"

CMD ["sh", "-c", "envsubst < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]