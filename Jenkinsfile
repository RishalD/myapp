pipeline {
  /* A declarative Pipeline */
    agent any

    stages {
        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }
     }
}