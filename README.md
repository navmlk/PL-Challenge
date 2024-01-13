# Introduction
The Greetings Service is a simple REST API that provides different salutations for various customers. This documentation outlines the API endpoints, the rationale behind using Flask, GitHub Actions, and Minikube, as well as challenges faced during development and potential future improvements.

##API Endpoints
GET /greet
Description: Get a generic greeting.
Example Request: GET /greet
Example Response: "Hello"
GET /greet/{customer}
Description: Get a personalized greeting based on the customer Value.
Parameters:
{customer}: The customer's identifier (e.g., A, B, C).
Example Request: GET /greet/Customer=A
Example Response: "Hi"
## Technology
### Why Flask?
Flask was chosen for several reasons:

Simplicity: Flask is a lightweight and easy-to-use framework, making it ideal for small to medium-sized projects like the Greetings Service.

Flexibility: Flask allows for flexible project structure and integrates well with various extensions, making it easy to customize based on project requirements.

Ease of Learning: Flask has a shallow learning curve, making it accessible for developers with varying levels of experience.

### Why GitHub Actions?
GitHub Actions were leveraged for CI/CD due to the following advantages:

Integration with GitHub: GitHub Actions is seamlessly integrated with GitHub repositories, making it convenient for automating workflows directly within the version control platform.

Workflow Automation: GitHub Actions provides a powerful and customizable workflow automation system, allowing for automated testing, building, and deployment.

Community Support: GitHub Actions has an active community and a vast ecosystem of pre-built actions, making it easy to integrate with different tools and services.

### Why Minikube?
Minikube was chosen for local Kubernetes development due to the following reasons:

Lightweight and Easy Setup: Minikube is a lightweight Kubernetes distribution designed for local development, providing a quick and easy setup for testing Kubernetes configurations.

Consistent Environment: Minikube ensures a consistent Kubernetes environment across different development machines, minimizing the "it works on my machine" problem.

Isolation: Minikube allows for isolated testing of Kubernetes deployments, services, and configurations in a local environment before moving to a production cluster.

### Challenges and Solutions
Challenge: Setting Up Kubernetes Locally
Solution: Minikube provided a straightforward solution for setting up a local Kubernetes cluster. It allowed for quick testing of deployments and services without the need for a dedicated cloud or on-premises Kubernetes cluster.
- Initially I was getting anything working at all because GITHub self hosted runner kept complaining about Docker Daemon not running, turns out to be Dokcer insallation itself was corrupted.
- Minikube wasnt responding to any requests (I kept getting connection refused error), had to delete minikube altogether and reinstalled it with minikube ` start --driver=hyperv `
- Also had to run cmd as administrator and run ` minikube tunnel `

Challenge: Containerizing Flask App
Solution: Docker was used to containerize the Flask application. This ensured consistent deployment across different environments and simplified the integration with Minikube and GitHub Actions.
- Never used Flask before, so had to pick up code from the Internet for this (I do apologize for it)

Challenge: CI/CD Integration
Solution: GitHub Actions provided an integrated CI/CD solution, allowing for seamless automation of testing, building Docker images, and deploying to Minikube or other Kubernetes clusters.

### Future Improvements
Enhanced Logging: Implementing more detailed logging to capture and analyze API usage patterns, errors, and performance metrics.

API Versioning: Implementing versioning for the API to ensure backward compatibility while introducing new features.

Monitoring and Metrics: Integrating monitoring tools and metrics to gain insights into the application's health and performance.

Feel free to explore, contribute, and provide feedback on the Greetings Service. Your input is highly appreciated for the continuous improvement of this project.