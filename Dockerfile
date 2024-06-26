FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    unixodbc-dev \
    g++ # necessário para compilações

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
    && curl https://packages.microsoft.com/config/debian/10/prod.list > /etc/apt/sources.list.d/mssql-release.list \
    && apt-get update \
    && ACCEPT_EULA=Y apt-get install -y msodbcsql17

# Aqui, adicione as instruções para configurar seu aplicativo
