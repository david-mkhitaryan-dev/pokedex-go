pipeline {
    agent any
    stages {
		stage('Git checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build and run pokedex') {
            steps {
                sh """docker build -t pokedex ."""
				sh """docker run -p 5555:5555 -d pokedex"""
				sh """npm test"""
				sh """npm start"""
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
