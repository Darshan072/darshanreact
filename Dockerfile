FROM node
WORKDIR /src
COPY . ./
RUN npm install -f && npm run build

FROM nginx
COPY --from=0 /src/out /usr/share/nginx/html
EXPOSE 80
