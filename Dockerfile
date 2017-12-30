FROM node:boron

RUN apt-get update

RUN apt-get install -y --allow build-essential wget git

# RUN cd /tmp && wget https://nodejs.org/download/release/v6.12.2/node-v6.12.2-linux-x64.tar.gz

# RUN cd /opt && tar xzvf /tmp/node-v6.12.2-linux-x64.tar.gz

ENV PATH $PATH:/opt/node-v6.12.2-linux-x64/bin

# RUN cd / && git clone https://github.com/oferzi23/react-example.git
RUN mkdir /example-app

ADD index.js /example-app/
ADD index.html /example-app/
ADD app /example-app

EXPOSE 8080

RUN cd /react/example 

RUN npm run setup 

CMD [ "npm", "run", "dev" ]