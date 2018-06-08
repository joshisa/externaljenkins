pipeline {
    agent any
    stages {
        stage('Example') {
            steps {
                echo 'Hello World'
                sh 'sudo echo "10.10.25.49 mycluster.icp" >> /etc/hosts'
                sh 'openssl s_client -showcerts -connect mycluster.icp:8500 </dev/null 2>/dev/null|openssl x509 -outform PEM >mycluster.icp.docker.crt'
                sh 'sudo mkdir -p /etc/docker/certs.d/mycluster.icp:8500'
                sh 'sudo cp mycluster.icp.docker.crt /etc/docker/certs.d/mycluster.icp:8500'
                sh 'sudo service docker restart'
                sh 'docker login -u admin -p admin "https://mycluster.icp:8500"'
            }
        }
    }
    post { 
        always { 
            echo 'I will always say Hello again!'
        }
    }
}
