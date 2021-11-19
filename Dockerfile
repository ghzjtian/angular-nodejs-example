FROM node:10 AS ui-build
WORKDIR /usr/src/app
COPY my-app/ ./my-app/
RUN cd my-app && npm install @angular/cli && npm install && npm run build

FROM node:10 AS server-build
WORKDIR /root/
COPY package*.json ./
COPY server.js ./
COPY webpack.config.js ./
RUN npm install && npm run build


FROM node:10 AS node-angular
WORKDIR /root/
COPY --from=ui-build /usr/src/app/my-app/dist ./my-app/dist
COPY --from=server-build /root/server.bundle.js .
EXPOSE 3080
CMD ["node", "server.bundle.js"]

