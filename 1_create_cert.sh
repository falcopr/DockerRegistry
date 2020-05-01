#!/bin/bash
openssl req -x509 -newkey rsa:4096 -keyout ./ssl/ca_key.pem -out ./ssl/ca_cert.pem -days 365
# openssl req -new -key client_key.pem -out client_req.csr
# openssl x509 -req -in client_req.csr -CA ca_cert.pem -CAkey ca_key.key -CAcreateserial -out client_cert.pem -days 1024 -sha256
# openssl req -x509 -newkey rsa:4096 -keyout ./ssl/client_key.pem -CA ./ssl/ca_cert.pem -CAkey ./ssl/ca_key.key 
-CAcreateserial -out ./
ssl/client_cert.pem -days 365

