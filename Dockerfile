FROM ghcr.io/gtm-oss/gtm-cloud-image:latest

EXPOSE 8080

ENTRYPOINT ["node", "server.js"]
