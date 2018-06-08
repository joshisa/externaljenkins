#!/usr/bin/env groovy

node {
   stage('Deploy') {
      kubernetesDeploy (configs: 'k8s/dev/**', 
                                  kubeconfigId: 'icp-config', 
                                  secretName: 'my-docker-registry',
                                  secretNamespace: 'default'
                       )

      input "ask something"
      }
}
