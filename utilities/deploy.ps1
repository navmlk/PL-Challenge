# Set the Kubernetes context (adjust if needed)
#kubectl config use-context docker-desktop

# Apply the Kubernetes deployment
kubectl apply -f ../deployment.yml

# Expose the service (NodePort for simplicity)
#kubectl expose deployment greetings-deployment-a --type=NodePort --name=greetings-service-a
#kubectl expose deployment greetings-deployment-b --type=NodePort --name=greetings-service-b

Write-Output "Application deployed to Kubernetes cluster."
