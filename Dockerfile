FROM node:24.11 AS build

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm i

COPY . .

FROM node:24.11.1-alpine3.22

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/package.json ./package.json
COPY --from=build /usr/src/app/node_modules ./node_modules
COPY --from=build /usr/src/app/src ./src

EXPOSE 8000

CMD ["npm", "run", "start"]