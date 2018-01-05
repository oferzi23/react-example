# react-example

React example app that demonstrates using [React] with [webpack], and [babeljs], as well as project structure.

Requirements:
- git
- Node v6
- npm v3

To run the app locally:

```bash
git clone https://github.com/mzabriskie/react-example.git
cd react-example
npm run setup
npm run dev
open http://localhost:8080
```

[React]: http://facebook.github.io/react/
[webpack]: http://webpack.github.io/
[babeljs]: https://babeljs.io/

### CI Workflow
each push event to this fork will trigger a travis-ci build flow which will:
- test the code on an instance
- build the docker image using the `Dockerfile`
- push the image to Dockerhub [here](https://hub.docker.com/r/oferzi23/react-example)
- <TODO> add deployment

### Run Inside a Container
runnig this project inside a container can be done by pulling the image from dockerhub. 
images are deployed with each push event and are pushed to the registry under `oferzi23/react-example:<version>-<build>`

to pull:  `docker pull oferzi23/react-example:<version>-<build>`
to run:  `docker run -p <external_PORT>:8080 <image name>`

  
