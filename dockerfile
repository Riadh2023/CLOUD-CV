FROM node:16-alpine

RUN mkdir -p /usr/app/

WORKDIR /usr/app/

COPY package*.json .

RUN npm install --force

COPY ./ ./

RUN npm run build

EXPOSE 3000

CMD ["yarn", "start"]