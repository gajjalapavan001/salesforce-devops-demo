pipeline {
    agent any

    environment {
        PATH = "/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin"
    }

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'master', url: 'https://github.com/gajjalapavan001/salesforce-devops-demo.git'
            }
        }

        stage('Run Apex Tests') {
            steps {
                sh 'sf apex run test --synchronous --wait 10'
            }
        }

        stage('Deploy to Dev Org') {
            steps {
                sh 'echo Deploying to Dev'
            }
        }

        stage('Deploy to QA Org') {
            steps {
                sh 'echo Deploying to QA'
            }
        }

        stage('Approval for Production') {
            steps {
                input message: 'Approve Production Deployment?'
            }
        }

        stage('Deploy to Production') {
            steps {
                sh 'echo Deploying to Production'
            }
        }

    }
}