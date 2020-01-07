pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                sh 'find jenkins_install/manifests -name *.pp -exec /usr/local/bin/puppet parser validate {} +;'
            }
        }
    }
}