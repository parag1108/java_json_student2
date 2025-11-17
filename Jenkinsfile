pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/parag1108/java_json_student2.git'
            }
        }

        stage('Build JAR') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t java_json_student2:latest .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker rm -f json_student2 || true'
                sh 'docker run -d --name json_student2 -p 8082:8082 java_json_student2:latest'
            }
        }
    }
}
