# Montar una imagen de node sobre la que construir la aplicacion front en Angular y copiar los archivos de configuracion
# Montar un Nginx que sirva de proxy reverse


FROM node:12-alpine as builder

WORKDIR /home/node/app

COPY package.json .

RUN npm install -g @angular/cli@11.2.12
RUN npm i

COPY src ./src
COPY angular.json .
COPY tsconfig.json .
COPY tsconfig.app.json .
COPY tslint.json .

RUN ng build --configuration=dev




