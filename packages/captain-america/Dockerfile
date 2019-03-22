FROM danman1188/node:build as builder
WORKDIR /avengers
COPY . /avengers
RUN lerna bootstrap --hoist -- --only=prod \
  && lerna run build

FROM node:10-alpine
RUN npm root -g
WORKDIR /avengers
COPY --from=builder /avengers /avengers
EXPOSE 8080
CMD ["node", "/avengers/packages/captain-america/build/server.js"]
