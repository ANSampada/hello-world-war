pipeline {
    agent {
        label "linux"
    stages {
        stage('clone step') {
            steps {
                sh 'rm -rf hello-world-war'
                sh 'chmod 777 ${workspace}/hello-world-war/
            }
        }
        stage('install tomcat') {
            steps {
                sh 'mvn package'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn package'
            }
        }
        stage('Deploy step') {
             steps {
                 sh 'sudo cp ${WORKSPACE}/target/hello-world-war-1.0.0.war /var/lib/tomcat9/webapps'       
            }
        }
    }
}

