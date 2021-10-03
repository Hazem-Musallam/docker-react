From node:alpine as builder

workdir '/app'

copy package.json .

RUN npm install

copy . .

RUN npm run build 


From nginx 
copy --from=builder /app/build /usr/share/nginx/html
