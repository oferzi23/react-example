FROM node:boron

RUN node --version && npm --version

RUN mkdir /example-app

WORKDIR /example-app

# RUN git clone https://github.com/oferzi23/react-example.git /example-app

ADD  ./* /example-app/

RUN npm install

EXPOSE 8080

CMD [ "npm", "run", "dev" ]
