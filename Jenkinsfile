pipeline {
    kubernetesDeploy (configs: '/home/ubuntu/templates/*.yaml', kubeConfig: [path: ''], kubeconfigId: 'icp-config', secretName: 'my-docker-registry', ssh: [sshCredentialsId: '*', sshServer: ''], textCredentials: [certificateAuthorityData: '', clientCertificateData: '', clientKeyData: '', serverUrl: 'https://'])
    agent { docker { image 'node:6.3' } }
    stages {
        stage('build') {
            steps {
                sh 'npm --version'
            }
        }
    }
}
