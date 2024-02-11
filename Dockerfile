FROM busybox:musl

RUN adduser -D site
USER site
WORKDIR /home/site

COPY site/documentation/_build/html .

CMD ["busybox", "httpd", "-f", "-v", "-p", "80"]
