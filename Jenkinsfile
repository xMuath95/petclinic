
pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
        sh './mvnw clean package'

            }
        }
            stage('Test') {
            steps {
               sh './mvnw test'
            }
            }
            stage('Code Quality Check') {
            steps {
               withCredentials([string(credentialsId: 'SONAR_TOKEN', variable: 'SONAR_TOKEN')])
                {
                     sh "./sonar-scanner-7.2.0.5079-macosx-aarch64/bin/sonar-scanner -Dproject.settings=sonar-project.properties"
                }
            }
            }
            stage('Security') {
            steps {
              echo 'sec steps'
            }
            }
            stage('Deploy') {
            steps {
              echo 'deplyeds steps'
            }
            
            }
}
}
