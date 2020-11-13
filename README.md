# Downloading to try it directly on machine

- `docker pull adoptopenjdk/openjdk8` : It will download by default the image with `latest` tag
- `docker pull adoptopenjdk/openjdk8:alpine` It will download the image with `alpine` tag

You can see the tags to choose [here](https://hub.docker.com/r/adoptopenjdk/openjdk8/tags)

 # Creating small customize docker image

Placed at tha same Dockerfile's directory execute
 - `docker build -t jdk-sample:customized .`

 Where `jdk-sample` is the name of the image and `customized` is the tag assigned.

```
> docker build -t jdk-sample:customized .
[+] Building 0.3s (7/7) FINISHED
 => [internal] load build definition from Dockerfile                                                                            0.0s
 => => transferring dockerfile: 292B                                                                                            0.0s
 => [internal] load .dockerignore                                                                                               0.0s
 => => transferring context: 2B                                                                                                 0.0s
 => [internal] load metadata for docker.io/adoptopenjdk/openjdk8:x86_64-tumbleweed-jre8u-nightly                                0.0s
 => [1/3] FROM docker.io/adoptopenjdk/openjdk8:x86_64-tumbleweed-jre8u-nightly                                                  0.0s
 => CACHED [2/3] RUN mkdir /opt/app                                                                                             0.0s
 => [3/3] RUN java -version                                                                                                     0.2s
 => exporting to image                                                                                                          0.0s
 => => exporting layers                                                                                                         0.0s
 => => writing image sha256:fe290cbcb4ab7197f80a97101a91c2e4143e7b67efd3044ea24616db2e9bb505                                    0.0s
 => => naming to docker.io/library/jdk-sample:customized                                                                        0.0s

```

# Running docker container

```
> docker run --name small-jdk-image -ti jdk-sample:customized`
cf43a052658d:/ # java -version
openjdk version "1.8.0_275-internal"
OpenJDK Runtime Environment (AdoptOpenJDK)(build 1.8.0_275-internal-202011121720-b01)
OpenJDK 64-Bit Server VM (AdoptOpenJDK)(build 25.275-b01, mixed mode)
cf43a052658d:/ #
```
`-ti` means that you wish to run an interactive session


 # Some commnads

- Deleting image
`docker rmi jdk-sample:customized`
or  
`docker rmi <IMAGE_ID>`

- Stopping a container
When you've run a container with docker run, and you made a change and wanna run it again you have to stop it first.
 
Check the container id with `docker container ls`
` docker container stop <CONTAINER_ID>`

And remove it
`docker container rm <CONTAINER_ID>`