FROM node:6-alpine
ADD . /code
WORKDIR /code
RUN npm install
CMD ["npm start"]
