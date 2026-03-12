pipeline {
    agent any

    stages {

        stage('Clone Repo') {
            steps {
                git 'https://github.com/gajjalapavan001/salesforce-devops-demo.git'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'sf apex run test --synchronous --wait 10'
            }
        }

        stage('Deploy') {
            steps {
                sh 'sf project deploy start --source-dir force-app'
            }
        }

    }
}