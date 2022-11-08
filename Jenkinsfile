pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t app .'
                sh 'docker tag app 988983169413.dkr.ecr.us-east-1.amazonaws.com/app'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker push 988983169413.dkr.ecr.us-east-1.amazonaws.com/app'
                sh 'ssh -i "/var/lib/jenkins/RHEL.pem" -o StrictHostKeyChecking=no ubuntu@18.205.153.78 docker run -itd -p 8080:8080 988983169413.dkr.ecr.us-east-1.amazonaws.com/app'
            }
        }   
    }
}
