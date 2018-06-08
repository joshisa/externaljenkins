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
        stage("Deploy ${config.K8S_NAMESPACE}@${config.K8S_CLUSTER}") {
            kubernetesDeploy (configs: '/home/ubuntu/templates/*.yaml', kubeConfig: [path: ''], kubeconfigId: 'icp-config', secretName: 'my-docker-registry', ssh: [sshCredentialsId: '*', sshServer: ''], textCredentials: [certificateAuthorityData: '', clientCertificateData: '', clientKeyData: '', serverUrl: 'https://'])
        }
    }
}
