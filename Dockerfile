FROM node:13-alpine
WORKDIR /app
COPY package*.json /app/
RUN npm install -g ionic
RUN npm install
COPY ./ /app/
RUN ionic build
EXPOSE 8100
CMD ["ionic", "serve"]
