FROM alpine:3.7

RUN apk update && apk add \
        perl \
     && rm -rf /var/cache/apk/*

ENTRYPOINT [ "perl" ]
CMD [ "-v" ]
