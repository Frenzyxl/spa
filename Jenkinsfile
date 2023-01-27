pipeline {
    agent {  docker { image 'python:3.10.7-alpine' } }
    stages {
        stage ('verify tooling') {
            steps {
                sh '''
                    python --version
                    curl --version
                    docker version
                    docker compose version
                    docker info
                '''
            }
        }
        stage ('start container') {
            steps {
                sh 'docker compose build'
                sh 'docker compose up -d'
                sh 'docker ps'
            }
        }
    }
}