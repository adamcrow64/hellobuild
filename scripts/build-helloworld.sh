#!/bin/bash
docker build -t adamcrow64/hellobuild github.com/adamcrow64/hellobuild
docker run -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):$(which docker) -ti --name hellobuild adamcrow64/hellobuild
