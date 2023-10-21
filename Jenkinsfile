pipeline {
  /* A declarative Pipeline */
    agent any

    stages {
        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
            post{
              success{
                 echo 'Now Archiving....'
                 archiveArtifacts artifacts: '**/target/*.jar'
              }
            }
        }
        stage('Deeploy to Staging'){
            steps{
                build job: 'deployToTomcat'
            }
        }
     }
}
