pipeline {
    agent any
    tools {
        maven 'maven'
        jdk 'jdk'
    }
    stages {
        stage('clean workspace'){
            steps{
                cleanWs()
            }
        }
        stage ('pull SCM'){
            steps{
            git branch: 'main', url: 'https://github.com/00-ani-00/Studentapp-project.git'
            }
        }
        stage('maven clean'){
            steps {
                sh "mvn clean install"
                sh 'mvn clean compile' 
                sh 'mvn test'
                sh 'mvn clean install -DskipTests=true'
            }

        }
        stage ('tomcat installation'){
            steps{
              sh "wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.97/bin/apache-tomcat-8.5.97.tar.gz"
              sh "tar -xzvf apache-tomcat-8.5.97.tar.gz "
              sh "mv apache-tomcat-8.5.97.tar.gz /opt/tomcat"
              sh "rm -rf apache-tomcat-8.5.97.tar.gz "
            }
        } 
    }
}
