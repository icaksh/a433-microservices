# import node v14 on alpine
FROM node:14-alpine

# deklarasikan workdir ke /app
WORKDIR /app

# copy semua file ke workdir
COPY . .

# deklarasi environtment yang dibutuhkan
ENV NODE_ENV=production DB_HOST=item-db

# install dependencies yang dibutuhkan
RUN npm install --production --unsafe-perm && npm run build

# expose port 8080
EXPOSE 8080

# run npm start jika kontainer diluncurkan
CMD ["npm","start"]