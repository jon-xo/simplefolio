FROM node:16
# FROM alpine:latest
# FROM node:lts-alpine
# ENV NODE_ENV=production

# RUN apk update &&\
#     apk upgrade &&\
#     apk add nodejs npm python3.8

WORKDIR /usr/app
COPY package*.json ./
# COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
# RUN npm install --production --silent && mv node_modules ../
RUN npm install
# RUN npm install && mv node_modules ../
COPY . .
EXPOSE 1234
# RUN chown -R node /usr/src/app
# USER node
CMD ["npm", "start"]