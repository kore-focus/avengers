FROM node:10-alpine

WORKDIR /captain-america

COPY ./package.json /captain-america/package.json
COPY ./build /captain-america/build

RUN npm install --only=prod --no-package-lock

EXPOSE 8080

CMD ["node", "./build/server.js"]
