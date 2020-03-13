pipeline {
    agent any
    stages {
		stage('Git clone') {
            steps {
                sh """git clone https://github.com/david-mkhitaryan-dev/pokedex-go.git"""
            }
        }
        stage('Build and run pokedex') {
            steps {
                sh """docker build -t pokedex ."""
				sh """docker run -d pokedex"""
            }
        }
        stage('Run jenkins') {
            steps {
				sh """mkdir -p jenkins_home"""
				sh """chown -R 1000:1000 jenkins_home"""
                sh """docker run --name jenkins -d -u root -p 8080:8080 -v $(which docker):/usr/bin/docker -v /var/run/docker.sock:/var/run/docker.sock jenkins/jenkins:alpine"""
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
