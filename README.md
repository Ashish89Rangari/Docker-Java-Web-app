# Docker-Java-Web-app
Docker Java Web application (without using springboot)

# Docker-Java-Web-app
  

Build the project using maven (.war file will be generated)

```bash
$ mvn clean package
```
Build the image using the following command

```bash
$ docker build -t ashishr99/maven-web-app .
```
Run the Docker container using the command shown below.

```bash
$ docker run -d -p 8080:8080 ashishr99/maven-web-app  
```
To list Docker images and container using the command shown below.

```bash
$ docker images 
$ docker ps 
```
To Push docker image in Dockerhub first tag it , if tagged push directly to Dockerhub.

```bash
$ docker tag  maven-web-app:latest ashishr99/maven-web-app:latest
$ docker push ashishr99/maven-web-app:latest 
```

# For windows
The application will be accessible at http://localhost:8080/maven-web-app

# For Linux
The application will be accessible at http://public-ip:8080/maven-web-app