FROM nginx:stable-alpine

# Update packages
RUN apk update && apk upgrade

COPY site/documentation/_build/html /usr/share/nginx/html

