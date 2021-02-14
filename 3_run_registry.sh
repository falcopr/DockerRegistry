#!/bin/bash
docker volume create docker_registry_data

docker run -d \
  --restart=always \
  --name docker_registry \
  -v `pwd`/auth:/auth \
  -v `pwd`/ssl:/ssl \
  -v docker_registry_data:/var/lib/registry\
  -e REGISTRY_AUTH=htpasswd \
  -e REGISTRY_AUTH_HTPASSWD_REALM="Registry Realm" \
  -e REGISTRY_AUTH_HTPASSWD_PATH=/auth/htpasswd \
  -e REGISTRY_HTTP_TLS_CERTIFICATE=/ssl/ca_cert.pem \
  -e REGISTRY_HTTP_TLS_KEY=/ssl/ca_key.pem \
  -p 9001:443 \
  registry

# Alternative Port Binding
# -e REGISTRY_HTTP_ADDR=0.0.0.0:9001
# Binding to local registry folder
# -v `pwd`/registry:/var/lib/registry \
