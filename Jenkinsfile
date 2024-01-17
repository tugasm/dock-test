// Jenkinsfile

pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Mengambil kode sumber dari repositori Git
                checkout scm
            }
        }

        stage('Build and Dockerize') {
            steps {
                // Menjalankan perintah build dalam Docker container
                script {
                    docker.build("my-go-app")
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                // Mengganti 'your-docker-username' dengan username Docker Hub Anda
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
                        docker.image("your-docker-username/my-go-app").push()
                    }
                }
            }
        }
    }
}
