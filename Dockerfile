FROM node:boron

RUN node --version && npm --version

RUN mkdir /example-app

ADD index.js /example-app/
ADD index.html /example-app/
ADD .eslintrc /example-app/
ADD package.json /example-app/
ADD assets /example-app/
ADD test /example-app/
ADD app /example-app

EXPOSE 8080

RUN cd /example-app && npm run setup 

CMD [ "cd", "/example-app", "&&", "npm", "run", "dev" ]
