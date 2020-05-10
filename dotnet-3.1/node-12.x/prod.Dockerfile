
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1.3-alpine3.11

# Installing Node
ENV NODE_VERSION=12.16.3     

RUN wget -q -O node-v$NODE_VERSION-linux-x64-musl.tar.xz "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64-musl.tar.xz" \
    && node_sha256="af47aa64de372d9a9d16307b6af9785ee28bdf9892f1de28a78b85917dacf257" \
    && echo "$node_sha256  node-v$NODE_VERSION-linux-x64-musl.tar.xz" | sha256sum -c - \       
    && tar -xJf "node-v$NODE_VERSION-linux-x64-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner \
    && ln -s /usr/local/bin/node /usr/local/bin/nodejs \
    && rm "node-v$NODE_VERSION-linux-x64-musl.tar.xz"  
