pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                cd 'jenkins_install'
                sh '/usr/local/bin/pdk validate'
            }
        }
    }
}
