node {
    checkout scm

    docker.withRegistry('https://mycluster.icp:8500', 'dockerlogin') {

        echo 'Hello'
        def customImage = docker.build("mycluster.icp:8500/default/nodeimage:7-alpine", "--build-arg PACKAGE_VERSION=${env.BRANCH_NAME} .")

        /* Push the container to the custom Registry */
        customImage.push()
    }
    sh("kubectl config set-cluster cfc-cluster --server=https://mycluster.icp:8001 --insecure-skip-tls-verify=true")
    sh("kubectl config set-context kubectl --cluster=cfc-cluster")
    sh("kubectl config set-credentials user --client-certificate=$HOME/.kube/kubecfg.crt --client-key=$HOME/.kube/kubecfg.key")
    sh("kubectl config set-context kubectl --user=user")
    sh("kubectl config use-context kubectl")    
    sh("kubectl cluster-info")
}
