FROM node:boron

RUN apt-get update

RUN mkdir /example-app

ADD index.js /example-app/
ADD index.html /example-app/
ADD app /example-app

EXPOSE 8080

RUN cd /react/example 

RUN npm run setup 

CMD [ "npm", "run", "dev" ]