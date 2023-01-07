pipeline {
    agent {
        label "linux"
    stages {
        stage('clone step') {
            steps {
                sh 'rm -rf hello-world-war'
                sh 'git clone https://github.com/ANSampada/hello-world-war.git'
            }
        }
        stage('install tomcat') {
            steps {
                sh 'echo insalling tomcat'
                sh 'chmod 777 ${WORKSPACE}/jenkins/tomcat_insatalation.sh'
                sh '${WORKSPACE}/jenkins/tomcat_insatalation.sh'
                sh 'echo succesflly installed tomcat'
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

