#!/usr/bin/env groovy

node {
   stage('Deploy') {
      kubernetesDeploy (configs: '**/setup/**', 
                                  kubeconfigId: 'icp-config', 
                                  secretName: 'my-docker-registry',
                                  secretNamespace: 'default'
                       )
      }
}
