pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                sh 'find . -name *.pp -exec /usr/local/bin/puppet parser validate {} +;'
            }
        }
    }
}