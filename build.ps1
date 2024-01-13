# Set the image name and tag
$ImageName = "greetings-service"
$ImageTag = "latest"
$RegistryUrl = "localhost:5000"

# Build the Docker image
docker build -t "${ImageName}:${ImageTag}" .

# Tag the image for the local registry
docker tag "${ImageName}:${ImageTag}" "${RegistryUrl}/${ImageName}:${ImageTag}"

# Push the image to the local registry
docker push "${RegistryUrl}/${ImageName}:${ImageTag}"

Write-Host "Docker image has been built and registered at ${RegistryUrl}/${ImageName}:${ImageTag}"
