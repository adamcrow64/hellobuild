FROM google/golang
RUN CGO_ENABLED=0 go get -a -ldflags '-s' github.com/adamcrow64/helloworld
RUN cp /gopath/src/github.com/adamcrow64/helloworld/Dockerfile /gopath
CMD docker build -t adamcrow64/helloworld gopath
