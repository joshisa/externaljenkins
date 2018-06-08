pipeline {
    agent { docker { image 'node:6.3' } }
    stages {
        stage('build') {
            steps {
                sh 'npm --version'
            }
        }
        // Deploy the application to Kubernetes. See the Jenkins Utility repo for
        // more information about the kubernetesDeploy function and it's configs.
        stage("Deploy default@mycluster.icp") {
            steps {
                sh 'docker info'
            }
        }
    }
}
