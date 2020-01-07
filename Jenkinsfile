pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                sh 'find . -name *.pp -exec /opt/puppetlabs/bin/puppet parser validate {} +;'
            }
        }
    }
}