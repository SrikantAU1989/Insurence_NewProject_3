pipeline {
    agent any
    tools {
        maven 'Maven 3'  // Configure in Jenkins > Global Tool Config
        jdk 'JDK17'      // Same here
    }
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/SrikantAU1989/Insurence_NewProject_3.git'
            }
        }
        stage('Build - Skip Tests') {
            steps {
                sh 'mvn clean install -DskipTests'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Docker Build & Run') {
            steps {
                sh '''
                    docker stop insureme-container || true
                    docker rm insureme-container || true
                    docker rmi insureme-img || true
                    docker build -t insureme-img .
                    docker run -d -p 8091:8080 --name insureme-container insureme-img
                '''
            }
        }
    }
}
