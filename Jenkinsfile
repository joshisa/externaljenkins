#!/usr/bin/env groovy

node {
   stage('Deploy') {
      kubernetesDeploy(
         kubeconfigId: "icp-config",
         configs: "config.yaml",
         dockerCredentials: [[credentialsId: 'mycluster.icp.docker.cred']])

      input "ask something"
      }
}
