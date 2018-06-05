# dotnet-node-docker

Update manifest
```sh
docker manifest create mocoding/dotnet-node:2.1-8.x mocoding/dotnet-node:2.1-8.x-arm32v7 mocoding/dotnet-node:2.1-8.x-amd64
docker manifest annotate mocoding/dotnet-node:2.1-8.x mocoding/dotnet-node:2.1-8.x-arm32v7 --os linux --arch arm
docker manifest annotate mocoding/dotnet-node:2.1-8.x mocoding/dotnet-node:2.1-8.x-amd64 --os linux --arch amd64
docker manifest push mocoding/dotnet-node:2.1-8.x
```