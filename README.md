# DevOps Project: CI/CD Pipeline for React To-Do App

A simple ToDo list app built with React, containerized with Docker, and deployed via a fully automated CI/CD pipeline using GitHub Actions and AWS.

---

## Architecture

(يمكنك هنا وضع رسم بياني بسيط إذا أردت، أو تركها كنص)

1.  **Code:** Pushed to GitHub Repository.
2.  **CI/CD:** GitHub Actions triggers on push/pull request.
3.  **Pipeline:** Runs `code` (lint) -> `test` (jest) -> `build_docker` (Docker build).
4.  **(Future):** `push` (to AWS ECR) -> `deploy` (to AWS App Runner/ECS).

---

## Technologies Used

* **Application:** React, HTML/CSS
* **Containerization:** Docker, Nginx
* **CI/CD Platform:** GitHub Actions
* **Cloud Hosting (Target):** AWS (ECR, ECS Fargate/App Runner)

---

## Collaborator

* **Collaborator:** FaycelElAyeb

---

## Instructions to Build and Run Locally

1.  **Build the Docker image:**
    ```bash
    docker build -t devops-app .
    ```

2.  **Run the container:**
    ```bash
    docker run -p 8080:8080 devops-app
    ```

3.  Open your browser and navigate to `http://localhost:8080`.