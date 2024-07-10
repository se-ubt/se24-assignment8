# Software Engineering Summer 2024

This repository is used to showcase concepts such as build automation, code quality monitoring, continuous integration,
behavior-driven development, architectures for web applications, unit testing, mocking, working with configuration,
and design patterns.

## Spring Boot Web Application

### Start application

```bash
cd application
mvn spring-boot:run
```

### Get list

```bash
curl http://localhost:8080/list
```

### Append to list

```bash
 curl --header "Content-Type: application/json" --request POST --data '[{"value": 0.5, "metadata": ""}, {"value": 0.6, "metadata": ""}]' http://localhost:8080/list  
```

### Append to list (malformed body)

```bash
 curl --header "Content-Type: application/json" --request POST --data '[{"value": 0.5; "metadata": ""}]' http://localhost:8080/list  
```

### Clear list

```bash
curl --request DELETE http://localhost:8080/list
```

### Get max length of list

```bash
curl http://localhost:8080/list/max-length
```

## Docker

### Building an image from the Dockerfile

```bash
docker build -t list-app:latest .
```

`-t` names (and optionally tags) the image in the `name:tag` format.

Alternative: Use Spring Boot's `build-image` goal:

```bash
mvn spring-boot:build-image
```

### Create and run a Docker container based on the image

```bash
docker run -it --rm list-app:latest
```

`-it`  runs a container in interactive mode with a pseudo-TTY (terminal).
`--rm` automatically removes the container (and its associated resources) if it exists already.<br/>

### Using Docker compose to build the image and run the app together with a Postgres DB

Build container image:

```bash
docker-compose build
```

Create and start containers:

```bash
docker-compose up
```

Stop and remove containers and networks:

```bash
docker-compose down
```
