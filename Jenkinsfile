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
    }
}