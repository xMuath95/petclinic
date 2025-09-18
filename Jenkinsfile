
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
               echo 'code q steps'
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