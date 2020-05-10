# SPA Docker image with .NET Core and Node JS

| Tag        | .NET Core  | Node JS  |
|------------|------------|----------|
| 2.0-8.x    |  2.0.7     |  8.11.2  |
| 2.1-8.x    |  2.1.0     |  8.11.2  |
| 2.1.6-10.x |  2.1.6     |  10.13.0 |
| 2.2-10.x   |  2.2       |  10.13.0 |
| 3.0-10.x   |  3.0       |  10.16.3 |
| 3.1-12.x   |  3.1       |  12.16.3 |

## Build Process
```sh
# run on PC/Mac
docker build --tag mocoding/dotnet-node:3.0-10.x-amd64 .
docker login && docker push mocoding/dotnet-node:3.0-10.x-amd64
# run on Raspberry Pi
docker build --tag mocoding/dotnet-node:3.0-10.x-arm32v7 .
docker login && docker push mocoding/dotnet-node:3.0-10.x-arm32v7

# run on PC/Mac
docker manifest create mocoding/dotnet-node:3.0-10.x mocoding/dotnet-node:3.0-10.x-arm32v7 mocoding/dotnet-node:3.0-10.x-amd64
docker manifest annotate mocoding/dotnet-node:3.0-10.x mocoding/dotnet-node:3.0-10.x-arm32v7 --os linux --arch arm
docker manifest annotate mocoding/dotnet-node:3.0-10.x mocoding/dotnet-node:3.0-10.x-amd64 --os linux --arch amd64
docker manifest push mocoding/dotnet-node:3.0-10.x
```
