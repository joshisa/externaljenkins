node {
    checkout scm
    
    docker.withRegistry('https://mycluster.icp:8500', 'dockerlogin') {

        def customImage = docker.build("my-image:${env.BUILD_ID}")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}
