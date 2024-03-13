FROM ghcr.io/shipwright-io/shipwright-samples/node:12

COPY . /app
WORKDIR /app

RUN \
    pwd && \
    ls -l && \
    npm install && \
    npm run print-http-server-version

EXPOSE 8080

CMD ["npm", "start"]