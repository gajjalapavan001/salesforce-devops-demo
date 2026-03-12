pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'master', url: 'https://github.com/gajjalapavan001/salesforce-devops-demo.git'
            }
        }

        stage('Run Apex Tests') {
            steps {
                sh '/opt/homebrew/bin/sf apex run test --synchronous --wait 10'
            }
        }

        stage('Deploy Dev') {
            steps {
                sh 'echo Deploying to Dev'
            }
        }

        stage('Deploy QA') {
            steps {
                sh 'echo Deploying to QA'
            }
        }

        stage('Approval for Production') {
            steps {
                timeout(time: 1, unit: 'HOURS') {
                    input message: 'Approve Production Deployment?'
                }
            }
        }

        stage('Deploy Production') {
            steps {
                sh 'echo Deploying to Production'
            }
        }

    }
}