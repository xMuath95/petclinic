pipeline {
    agent any
    }
    stages {
        stage('Build') {
            steps {
        sh ./mvnw clean package
            }
        }
            stage('Test') {
            steps {
               sh ./mvnw test
            }
            }
            stage('Code Quality Check') {
            steps {
               
            }
            }
            stage('Security') {
            steps {
              
            }
            }
            stage('Deploy') {
            steps {
              
            }
            
            }
    
}