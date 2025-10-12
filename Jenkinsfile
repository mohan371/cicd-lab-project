pipeline {
    agent any // Run this pipeline on any available Jenkins agent

    environment {
        // Define your Docker Hub credentials ID from Jenkins
        DOCKER_CREDENTIALS_ID = 'dockerhub-creds'
        DOCKER_IMAGE = "mohanv899/my-webapp"
    }

    stages {
        stage('1. Checkout Code') {
            steps {
                // Get the latest code from your Git repository
                git 'https://github.com/mohan371/cicd-lab-project.git'
            }
        }

        stage('2. Build Docker Image') {
            steps {
                // Build the Docker image using the Dockerfile in your repo
                script {
                    docker.build(DOCKER_IMAGE, '.')
                }
            }
        }

        stage('3. Push Docker Image') {
            steps {
                // Log in to Docker Hub and push the image
                script {
                    docker.withRegistry('https://registry.hub.docker.com', DOCKER_CREDENTIALS_ID) {
                        docker.image(DOCKER_IMAGE).push("${env.BUILD_NUMBER}")
                        docker.image(DOCKER_IMAGE).push("latest")
                    }
                }
            }
        }

        stage('4. Deploy Application') {
            steps {
                // Run the new Docker container (and stop any old one)
                sh '''
                    #!/bin/bash
                    # Stop the container if it's already running
                    docker stop my-running-app || true
                    # Remove the stopped container
                    docker rm my-running-app || true
                    # Run the new container from the image we just pushed
                    docker run -d --name my-running-app -p 8080:80 ${DOCKER_IMAGE}:latest
                '''
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
    }
}