FROM alpine:3.7

RUN apk update && apk add \
        perl \
     && rm -rf /var/cache/apk/*

WORKDIR /tmp

ENTRYPOINT [ "perl" ]
CMD [ "-v" ]
