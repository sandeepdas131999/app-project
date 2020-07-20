node ( ' masterslave ' ) {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build images') {
        /* This builds the actual image; synonymous to
         * docker build on the command line. */
             sh "docker build -t sandeepdas131999/website-test ."
           
    }
    stage('Push Image') {
            withDockerRegistry([ credentialsId: "77aa0eb7-9d8a-486b-a244-a7183f3d6198", url: "" ])
           /* docker.withRegistry('https://registry.hub.docker.com', 'bb0b7427-5db4-40b5-9361-310c3d163154') */ {
            echo "${env.BUILD_NUMBER}"
            sh "docker tag sandeepdas131999/website-test sandeepdas131999/website-test:${env.BUILD_NUMBER} "
            sh "docker push sandeepdas131999/website-test:${env.BUILD_NUMBER}"
           }
   }
   }
