pipeline {
    agent any
    stages {
        stage ('verify tooling') {
            steps {
                sh '''
                    python3 --version
                    curl --version
                    docker version
                    docker compose version
                    docker info
                '''
            }
        }
        stage ('Prune Docker data') {
            steps {
                sh 'docker system prune -a --volumes -f'
            }
        }
        stage ('start container') {
            steps {
                sh 'docker compose build'
                sh 'docker compose up -d'
                sh 'docker ps'
            }
        }
        stage ('Run tests') {
            steps {
                sh 'curl http://localhost:5000'
            }
        }
    }
    post {
        always {
            sh 'docker compose down --remove-orphans -v'
            sh 'docker compose ps'
        }
    }
}