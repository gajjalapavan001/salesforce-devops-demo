pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                git 'https://github.com/gajjalapavan001/salesforce-devops-demo.git'
            }
        }

        stage('Run Apex Tests') {
            steps {
                sh 'sf apex run test --wait 10'
            }
        }

        stage('Deploy to Dev Org') {
            steps {
                sh 'sf project deploy start'
            }
        }

    }
}