FROM node:16.16.0

WORKDIR /usr/src

COPY . .

EXPOSE 5000

RUN npm i

RUN npm run build

RUN npx prisma generate

RUN npm test

CMD [ "npm", "start"]