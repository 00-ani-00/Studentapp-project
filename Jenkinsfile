pipeline {
    agent any
    tools {
        maven 'maven' //install plugin of maven
        jdk 'jdk'     //install plugin of java
        // docker 'docker'
    }
    stages {
        stage('clean workspace'){
            steps{
                cleanWs()
            }
        }
        stage('pull SCM'){
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
                sh 'mv target/studentapp-2.2-SNAPSHOT.war students.war'
            }

        }
        stage('build and push'){
            steps{
                script{
                    withDockerRegistry(credentialsId: 'docker', toolName: 'docker'){
                       sh 'docker system prune -af'
                       sh 'docker build -t anilagad/studentapp .'
                       sh 'docker run -d --name my-cont -p 8080:8080 anilagad/studentapp'
                       sh 'docker push anilagad/studentapp'
                   }
                }
            }
        }
    }
}