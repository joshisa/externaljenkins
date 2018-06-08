pipeline {
    agent any
    stages {
        stage('Example') {
            steps {
                echo 'Hello World'
                sh 'chmod +x $WORKSPACE/setup/remote-docker-login.sh'
                sh '$WORKSPACE/setup/remote-docker-login.sh 10.10.25.49'
            }
        }
    }
    post { 
        always { 
            echo 'I will always say Hello again!'
        }
    }
}
