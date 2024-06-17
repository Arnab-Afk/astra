
FROM node:12.18.3-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000

RUN npm run build
CMD [ "npm", "run", "dev" ]