node {
    checkout scm

    docker.withRegistry('https://mycluster.icp:8500', 'dockerlogin') {

        echo 'Hello'
        def customImage = docker.build("mycluster.icp:8500/default/nginxhello:alpine", "--build-arg PACKAGE_VERSION=${env.BRANCH_NAME} .")

        /* Push the container to the custom Registry */
        customImage.push()
    }
    sh("kubectl config set-cluster cfc-cluster --server=https://mycluster.icp:8001 --insecure-skip-tls-verify=true")
    sh("kubectl config set-context kubectl --cluster=cfc-cluster")
    sh("kubectl config set-credentials user --client-certificate=/home/ubuntu/.kube/kubecfg.crt --client-key=/home/ubuntu/.kube/kubecfg.key")
    sh("kubectl config set-context kubectl --user=user")
    sh("kubectl config use-context kubectl")    
    //sh("kubectl cluster-info")
    sh("kubectl delete -f setup/hello.yml")
    sh("kubectl delete svc nginxhello")
    sh("kubectl apply -f setup/hello.yml")
    sh("kubectl expose deployment nginxhello --type=NodePort --port=8080 --target-port=8080")
    sh("curl http://mycluster.icp:\$(kubectl get svc nginxhello -n default -o jsonpath='{.spec.ports[*].nodePort}')")
}
