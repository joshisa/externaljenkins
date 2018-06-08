#!/usr/bin/env groovy

node {
   stage('Deploy') {
      kubernetesDeploy (configs: '/home/ubuntu/templates/*', 
                                  kubeconfigId: 'icp-config', 
                                  secretName: 'my-docker-registry',
                                  secretNamespace: 'default'
                       )

      input "ask something"
      }
}
