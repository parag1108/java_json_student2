ipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/parag1108/java_json_student2.git'
            }
        }

        stage('Build JAR') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'sudo docker build -t student2_api_image .'
            }
        }

        stage('Stop old container') {
            steps {
                sh 'sudo docker stop student2_api_container || true'
                sh 'sudo docker rm student2_api_container || true'
            }
        }

        stage('Run using Docker Compose') {
            steps {
                sh 'sudo docker compose down || true'
                sh 'sudo docker compose up -d --build'
            }
        }

    }

    post {
        success {
            echo "Deployment Successful!"
        }
        failure {
            echo "Build Failed!"
        }
    }
}
