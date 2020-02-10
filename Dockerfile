FROM node:8.12.0

ADD . /root/docker-copy/

WORKDIR /root/docker-copy

RUN npm install

RUN npm install pm2 -g

RUN npm run build

EXPOSE 6060

CMD ["pm2-runtime", "pm2.yml"]

