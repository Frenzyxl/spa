pipeline {
    agent any
    stages {
        stage ('verify tooling') {
            steps {
                pwsh(script: 'docker version')
               
            }
        }
        
    }
}