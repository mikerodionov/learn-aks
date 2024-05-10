```bash
ls | xargs stat --printf "$%n %A \n" # display file's permissions

chmod +x my-troubleshooting-app.sh # makes "my-troubleshooting-app.sh" executable

docker build -t my-troubleshooting-app . # build a Docker image based on the Dockerfile in the current directory and tags the image with the name "my-troubleshooting-app"

docker tag my-troubleshooting-app <your-registry>/my-troubleshooting-app:v1 # tag the existing image "my-troubleshooting-app" with a new repository name "<your-registry>/my-troubleshooting-app" and a tag name v1. We will use this to push to Docker

docker login
docker push <your-registry>/my-troubleshooting-app:v1 # push the image to the registry

docker run -e INTERVAL=5 -e HOST=microsoft.com <your-registry>/my-troubleshooting-app:v1 # as you remember, in our bash script we added environment variables for the interval that the script runs and for the host that it needs to reach. With "-e" we set the environment variables, so basically, every 5 seconds, we try to determine the time it takes to complete the request, as well as the HTTP status code, when doing curl towards "microsoft.com"

docker ps

docker stop <containerid>
```