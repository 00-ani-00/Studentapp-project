pipeline {
    agent {
        node {
            label 'label1'
        }
    }
    stages {
        stage('Git Clone') {
            steps {
                sh '''
                
                git clone https://github.com/1hrishi9/studentapp-ui.git
             
                '''
         
                echo "Successfully completed Git clone stage"
            }
        }
        stage('Build') {
            steps {
                echo "Successfully built"  // Placeholder for your build steps
            }
        }
        stage('Test') {
            steps {
                echo "Successfully tested"  // Placeholder for your test steps
            }
        }
        stage('Download and Install Tomcat') {
            steps {
                sh '''
                
                wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.93/bin/apache-tomcat-8.5.93.tar.gz

                tar -xzf apache-tomcat-8.5.93.tar.gz 

                rm -rf  apache-tomcat-8.5.93.tar.gz 

               sudo apt-get install maven -y

                sudo mvn clean 

                sudo mvn package 

                cd /home/ubuntu/workspace/my-project/target

               sudo mv studentapp-2.2-SNAPSHOT.war student.war

               cd /home/ubuntu/workspace/my-project/target 

                sudo mv student.war /home/ubuntu/workspace/my-project/apache-tomcat-8.5.93/webapps

               cd /home/ubuntu/workspace/my-project/apache-tomcat-8.5.93/bin

                ./startup.sh 

               ./catalina.sh start



                '''
            }
        }
        stage('Deploy') {
            steps {
                echo "Successfully deployed"  // Placeholder for your deployment steps
            }
        }
    }
}
