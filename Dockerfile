FROM ghcr.io/gtm-oss/gtm-cloud-image:latest

ENV PORT=80
EXPOSE 80

CMD ["node", "server.js"]
