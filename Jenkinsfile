pipeline {
    agent any
    stages {
        stage('Example') {
            steps {
                echo 'Hello World'
                sudo sh 'setup/remote-docker-login.sh 10.10.25.49'
            }
        }
    }
    post { 
        always { 
            echo 'I will always say Hello again!'
        }
    }
}
