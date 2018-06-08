pipeline {
    agent any
    stages {
        stage('Example') {
            steps {
                echo 'Hello World'
                echo '10.10.25.49 mycluster.icp' >> /etc/hosts
                openssl s_client -showcerts -connect mycluster.icp:8500 </dev/null 2>/dev/null|openssl x509 -outform PEM >mycluster.icp.docker.crt
                mkdir -p /etc/docker/certs.d/mycluster.icp:8500
                cp mycluster.icp.docker.crt /etc/docker/certs.d/mycluster.icp:8500
                service docker restart
                docker login -u admin -p admin 'https://mycluster.icp:8500'
            }
        }
    }
    post { 
        always { 
            echo 'I will always say Hello again!'
        }
    }
}
