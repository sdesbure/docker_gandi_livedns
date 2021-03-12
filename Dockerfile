FROM alpine:3

ARG VCS_REF="1cf58e3"
ARG BUILD_DATE="2018-02-15T16:06:39Z"

LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/sdesbure/docker_gandi_livedns" \
      org.label-schema.name="Gandi LiveDNS" \
      org.label-schema.docker.dockerfile="/Dockerfile" \
      org.label-schema.license="Apache2.0" \
      org.label-schema.build-date=$BUILD_DATE

WORKDIR /gandi

RUN apk add --no-cache bash \
                      curl \
                      jq

COPY updatedns.sh .

CMD ["updatedns.sh"]