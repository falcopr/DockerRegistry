#!/bin/bash
docker run -d \
  --restart=always \
  --name registry \
  -v `pwd`/auth:/auth \
  -v `pwd`/ssl:/ssl \
  -e REGISTRY_AUTH=htpasswd \
  -e REGISTRY_AUTH_HTPASSWD_REALM="Registry Realm" \
  -e REGISTRY_AUTH_HTPASSWD_PATH=/auth/htpasswd \
  -e REGISTRY_HTTP_ADDR=0.0.0.0:9001 \
  -e REGISTRY_HTTP_TLS_CERTIFICATE=/ssl/ca_cert.pem \
  -e REGISTRY_HTTP_TLS_KEY=/ssl/ca_key.pem \
  -p 9001:443 \
  registry

