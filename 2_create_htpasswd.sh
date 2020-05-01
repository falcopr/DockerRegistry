#!/bin/bash
docker run --rm --entrypoint htpasswd registry -Bbn username password > ./auth/htpasswd
