pipeline {
    agent any

    environment {
        PATH = "/usr/local/bin:/opt/homebrew/bin:${env.PATH}"
    }

    stages {

        stage('Checkout Code') {
            steps {
                git 'https://github.com/gajjalapavan001/salesforce-devops-demo.git'
            }
        }

        stage('Run Apex Tests') {
            steps {
                sh 'sf apex run test --code-coverage --wait 10'
            }
        }

        stage('Deploy to Dev Org') {
            steps {
                sh 'sf project deploy start --target-org devOrg'
            }
        }

        stage('Deploy to QA Org') {
            steps {
                sh 'sf project deploy start --target-org qaOrg'
            }
        }

        stage('Deploy to Production') {
            steps {
                sh 'sf project deploy start --target-org prodOrg'
            }
        }

    }
}