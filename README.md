# docker.gitversion

[GitTools/GitVersion](https://github.com/GitTools/GitVersion) in Docker.

This is an example, probably addressing [#1218: Docker improvements](https://github.com/GitTools/GitVersion/issues/1218).
In summary, this docker image adds `gitversion` and `git` to the latest `mono` image.

To build the docker image and run the gitversion command line tool against this repo within docker, type

```console
docker-compose up
```