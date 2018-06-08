#!/usr/bin/env groovy

node {
   writeDeployment()
   
   stage('Deploy') {
      kubernetesDeploy (configs: 'deployment.yaml', 
                                  kubeconfigId: 'icp-config', 
                                  secretName: 'my-docker-registry',
                                  secretNamespace: 'default'
                       )
      }
}
void writeDeployment() {
    writeFile file: 'deployment.yaml', text: '''apiVersion: extensions/v1beta1
kind: Deployment
metadata:
  labels:
    run: nginx
  name: nginx
spec:
  replicas: 1
  selector:
    matchLabels:
      run: nginx
  template:
    metadata:
      labels:
        run: nginx
    spec:
      containers:
      - image: nginx:1.13-alpine
        name: nginx'''
}
