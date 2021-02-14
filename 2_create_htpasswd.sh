#!/bin/bash
docker run --rm --entrypoint htpasswd registry -Bbn username password > ./auth/htpasswd

# The new registry version's htpasswd is faulty
# Use this for generation temporary
# docker run --rm -ti xmartlabs/htpasswd <username> <password> > htpasswd
