FROM node:22-slim
WORKDIR /app
ADD . /app
EXPOSE 80
CMD ["node", "app.js"]