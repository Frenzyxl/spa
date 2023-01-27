pipeline {
    agent any
    stages {
        stage ('verify tooling') {
            steps {
                sh '''
                    python3 --version
                    curl --version
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