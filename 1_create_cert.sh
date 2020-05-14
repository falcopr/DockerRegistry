#!/bin/bash
openssl genrsa 4096 > ca_key.pem
openssl req -new -x509 -nodes -sha256 -days 365 -key ./ssl/ca_key.pem -out ./ssl/ca_cert.pem
