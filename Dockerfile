FROM node:14
WORKDIR /app
EXPOSE 3000
COPY . .
RUN npm install
RUN ls 
ENTRYPOINT ["node_modules/.bin/fastify", "start", "-l", "info", "app.js"]
