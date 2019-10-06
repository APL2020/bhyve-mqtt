FROM node:8.6

WORKDIR /usr/src
RUN npm install --production
CMD npm run start
COPY app/ /usr/src/bhyve/

# ports and volumes
EXPOSE 1883 8883
VOLUME /usr/src/bhyve
