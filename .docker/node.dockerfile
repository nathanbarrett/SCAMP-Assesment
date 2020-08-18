FROM node:current-buster-slim

WORKDIR /var/www

COPY package*.json package*.json
RUN npm install

EXPOSE 8000

#RUN chmod +x app.js
ENTRYPOINT [ "node", "app.js" ]

