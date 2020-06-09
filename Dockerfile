FROM alpine:3.10

RUN apk add --no-cache ca-certificates git git-lfs openssh curl perl bash rsync findutils

ADD posix/* /usr/local/bin/

RUN chmod +x /usr/local/bin/send-msg

RUN chmod +x /usr/local/bin/cache

RUN chmod +x /usr/local/bin/clone

RUN mkdir /cache 

CMD ["/bin/bash"]
