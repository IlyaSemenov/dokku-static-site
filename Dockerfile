FROM alpine:3.4

EXPOSE 5000
WORKDIR /app
ENTRYPOINT ["nginx", "-c",  "/nginx.conf"]

RUN apk add --no-cache nginx
ADD nginx.conf /

ONBUILD ADD . /app
