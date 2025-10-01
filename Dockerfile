FROM alpine:3

ARG KUBECTL_VERSION=v1.34.1

RUN apk add --no-cache curl ca-certificates bash && \
  curl -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl" && \
  chmod +x kubectl && \
  mv kubectl /usr/local/bin/ && \
  apk del curl

USER nobody
