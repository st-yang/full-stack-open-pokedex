FROM node:20

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

RUN npm ci

ENV PORT=5000

RUN npm run build

CMD ["npm", "run", "start-prod"]
