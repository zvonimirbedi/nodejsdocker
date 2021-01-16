# NodeJS (express) dockerized starter backend app 

### Go to repo directory

# Builde docker image 
docker build -t nodesimplewebimage .

# Run docker image (remove -d detached to see output)
docker run --name nodesimplewebcontainer -p 8080:8080 -d nodesimplewebimage

# Rebuild Rerun - (Re)Build image, remove existing container and run docker container (override existing container)
docker build -t nodesimplewebimage . && docker rm nodesimplewebcontainer -f && docker run --name nodesimplewebcontainer -p 8080:8080 -d nodesimplewebimage