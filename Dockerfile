FROM node:boron

RUN node --version && npm --version

COPY app /example-app/app
COPY assets /example-app/assets
COPY index* /example-app/
COPY .eslintrc /example-app/
COPY package.json /example-app/
COPY .babelrc /example-app/
COPY webpack.config.js /example-app/

WORKDIR /example-app

RUN ls -la

RUN npm install
EXPOSE 8080

CMD npm start
