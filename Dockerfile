FROM alpine:latest

ARG VCS_REF="1cf58e3"
ARG BUILD_DATE="2018-02-15T16:06:39Z"

LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/sdesbure/docker_gandi_livedns" \
      org.label-schema.name="Gandi LiveDNS" \
      org.label-schema.docker.dockerfile="/Dockerfile" \
      org.label-schema.license="Apache2.0" \
      org.label-schema.build-date=$BUILD_DATE

WORKDIR /gandi

RUN apk add --no-cache bash=5.1.0-r0 \
                      curl=7.74.0-r1 \
                      jq=1.6-r1

COPY updatedns.sh .

CMD ["/gandi/updatedns.sh"]