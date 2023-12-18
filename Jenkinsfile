pipeline {
    agent any
    tools {
        maven 'maven'
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
    }
}    