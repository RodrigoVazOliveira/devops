#!/bin/bash
docker  rmi -f $(docker images -a --format "{{.ID}}"
docker container rm $(docker container ls -a --format '{{.ID}}'))
