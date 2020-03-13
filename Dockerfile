FROM node:6-alpine
ADD . /code
WORKDIR /code
RUN git clone https://github.com/david-mkhitaryan-dev/pokedex-go.git
RUN npm install
