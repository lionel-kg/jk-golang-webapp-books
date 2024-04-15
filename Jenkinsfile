pipeline {
    
     environment {
       ID_DOCKER = "${ID_DOCKER_PARAMS}"
       IMAGE_NAME = "jk-golang-webapp-books"
       IMAGE_TAG = "latest"
       PORT_EXPOSED = "${PORT_PARAMS}" 
       STAGING = "${ID_DOCKER}-staging"
       PRODUCTION = "${ID_DOCKER}-production"
     }
     agent none
     stages {
         stage('Build image') {
             agent any
             steps {
                script {
                  echo "hello"
                }
             }
        }
  }
    post {
        always {
            emailext (
                to: 'lionel77350@gmail.com',
                subject: "Rapport de build - ${currentBuild.fullDisplayName}",
                body: "Bonjour,\n\nLe build ${currentBuild.fullDisplayName} s'est terminé avec le statut ${currentBuild.currentResult}.\n\nCordialement,\nJenkins",
            )
        }
    }
}
