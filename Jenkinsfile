pipeline {
    agent any
    stages {
		stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh """docker build -t pokedex ."""
            }
        }
		stage('Test') {
            steps {
				sh """docker run pokedex npm test"""
            }
        }
		stage('Deploy') {
            steps {
				sh """docker run -p 5555:5555 -d pokedex"""
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
