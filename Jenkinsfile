pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                echo '📥 Pulling latest code from GitHub'
                checkout scm
            }
        }

        stage('Build & Run Docker') {
            steps {
                echo '🐳 Building & running Docker containers'
                sh 'chmod +x scripts/run_docker.sh'
                sh './scripts/run_docker.sh'
            }
        }

    }

    post {
        success {
            echo '✅ Deployment successful – Web app is live!'
        }
        failure {
            echo '❌ Deployment failed – check logs'
        }
    }
}
