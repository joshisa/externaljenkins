pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
                sh 'svn --version'
                sh 'docker login -u admin -p admin https://mycluster.icp:8500
            }
        }
    }
}
