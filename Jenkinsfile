Jenkinsfile (Declarative Pipeline)
pipeline {
    agent { docker { image 'ruby' } }
    stages {
        stage('build') {
            steps {
                echo 'ruby --version'
                echo 'building the application...
            }
        }
        
        stage('test') {
            steps {
                echo 'testing the application....'
            }
        }
        
        stage('deploy') {
            steps {
                echo 'deploying the application...'
            }
        }
    }
}
