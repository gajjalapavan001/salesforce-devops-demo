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
                sh '/opt/homebrew/bin/sf apex run test --synchronous --wait 10 || true'
            }
        }

        stage('Deploy Dev') {
            steps {
                sh 'echo Deploying to Dev Org'
            }
        }

        stage('Deploy QA') {
            steps {
                sh 'echo Deploying to QA Org'
            }
        }

        stage('Deploy Production') {
            steps {
                sh 'echo Deploying to Production Org'
            }
        }

    }
}
// trigger new build
// test build trigger
