node {
    checkout scm

    docker.withRegistry('https://mycluster.icp:8500', 'dockerlogin') {

        echo 'Hello'
        def image = docker.build("mycluster.icp:8500/default/nodeimage:7-alpine", "--build-arg PACKAGE_VERSION=${env.BRANCH_NAME} .")
        //def customImage = docker.build("my-image:${env.BUILD_ID}")

        /* Push the container to the custom Registry */
        // customImage.push()
    }
}
