# DockerRegistry
Creating a Docker Registry secured by password and TLS

## Usage
Run all bash scripts from 1_ to 3_.
Also customize paths inside the scripts for your needs.

## Insecure-Registry
If using the docker daemon directly add --insecure-registry flag and adding the insecure registry.
https://github.com/sameersbn/docker-gitlab/issues/890#issuecomment-247194859

If using the docker machine then go to .docker\machine\machines\default\config.json and add the URL to the registry inside InsecureRegistry, for e.g. "localhost:5000".
https://gist.github.com/SalmonKing72/58d73b733a81a5c0478d90408e175ed9
