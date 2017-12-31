FROM node:boron

RUN node --version && npm --version

RUN mkdir /example-app

RUN git clone https://github.com/oferzi23/react-example.git /example-app
#ADD index.js /example-app/
#ADD index.html /example-app/
#ADD .eslintrc /example-app/
#ADD .babelrc /example-app/
#ADD webpack.config.js /example-app/
#ADD package.json /example-app/
#ADD assets /example-app/assetes
#ADD test /example-app/test
#ADD app /example-app/app

RUN cd /example-app && ls  -lR
EXPOSE 8080

WORKDIR /example-app

RUN npm run setup 

CMD [ "npm", "run", "dev" ]
