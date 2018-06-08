node {
    checkout scm

    docker.withDockerRegistry([credentialsId: 'mycluster.icp.docker.cred', url: 'https://mycluster.icp']) {
        echo "Hello"
        //def customImage = docker.build("my-image:${env.BUILD_ID}")

        /* Push the container to the custom Registry */
        //customImage.push()
    }
}
