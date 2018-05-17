FROM microsoft/dotnet:2.0.7-runtime

# Install NodeJS 
RUN apt-get update
RUN apt-get -y install gnupg2
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

ENV ASPNETCORE_URLS http://+:80
EXPOSE 80