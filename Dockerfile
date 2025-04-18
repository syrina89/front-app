FROM node:18 AS builder
WORKDIR /usr/src/app
ARG VITE_API_URL 

ENV VITE_API_URL=${VITE_API_URL}
COPY package.json  .
RUN npm install --force
COPY . .
#EXPOSE 5173
#CMD [ "npm","run","dev","--","--host","0.0.0.0"]
RUN npm run build
#----------------------------------------------------
 FROM nginx:alpine
COPY --from=builder /usr/src/app/dist /usr/share/nginx/html
EXPOSE 80
CMD [ "nginx","-g","daemon off;" ]
   