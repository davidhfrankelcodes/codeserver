# codeserver

## Installation

### Configuration
* Copy _.env.template_ to _.env_ and fill out with
  * Unix Timezone
  * password to enter the app
  * sudo password for the abc user
* Modify Dockerfile and install whatever programs you want.

### Run Server
* From project root, run

```
docker-compose up -d --build
```
* The command above should start serving the app on localhost:8443
* The `docker-compose` command forwards traffic incoming to localhost:5100 into the container as port 5000.
  This means you can make a Flask app in the container. The logs inside the container will say serving on port 5000.
  However, the Flask app will be accessible on the host on port 5100.
