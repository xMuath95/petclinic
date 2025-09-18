
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
                     sh '/Users/muath/petclinic/sonar-scanner-7.2.0.5079-macosx-aarch64/bin/sonar-scanner'
                }
            }
            }
            stage('Security') {
            steps {
              dependencyCheck(
                  odcInstallation: 'DC-Tool',
                  additionalArguments: '--scan ./ --format XML --out ./target/dependency-check --prettyPrint'
            )
            dependencyCheckPublisher(
                pattern: 'target/dependency-check/dependency-check-report.xml'
            )
            }
            }
            stage('Deploy') {
            steps {
              echo 'deplyeds steps'
            }
            
            }
}
}
