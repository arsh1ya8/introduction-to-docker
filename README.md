# Introduction to Docker – Node.js Application

## Project Overview
A simple Node.js HTTP application containerized using Docker and deployed to Google Cloud Artifact Registry.

## Technologies Used
- Docker
- Node.js
- Google Cloud Platform
- Google Artifact Registry
- Cloud Shell

## Project Structure
```text
introduction-to-docker/
├── Dockerfile
├── app.js
└── README.md
```

## Docker Implementation

### 1. Build Docker Image
```bash
docker build -t node-app:0.1 .
```

### 2. Run Container
```bash
docker run -p 4000:80 --name my-app node-app:0.1
```

### 3. Test Application
```bash
curl http://localhost:4000
```

### 4. Debug Containers
```bash
docker logs my-app
docker exec -it my-app bash
docker inspect my-app
```

### 5. Build Updated Image
```bash
docker build -t node-app:0.2 .
```

### 6. Run Updated Container
```bash
docker run -p 8080:80 --name my-app-2 -d node-app:0.2
```

## Google Cloud Artifact Registry

The Docker image was tagged and pushed to Google Cloud Artifact Registry.

Example:
```bash
docker push REGION-docker.pkg.dev/PROJECT_ID/REPOSITORY/node-app:0.2
```

## Key Learnings
- Creating Dockerfiles and custom images
- Running containers and mapping ports
- Managing container versions
- Debugging using Docker CLI
- Publishing and pulling images from Google Artifact Registry

## Project Source
[GitHub Repository](https://github.com/arsh1ya8/introduction-to-docker)

