FROM node:10
ARG DIR=/opt/api
WORKDIR $DIR
COPY . .
RUN npm install
ENTRYPOINT [ "/usr/local/bin/node", "app.js" ]
