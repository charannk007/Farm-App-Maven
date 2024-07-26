pipeline {
    agent any

    environment {
        MAVEN_HOME = tool name: 'mavens', type: 'maven'
        TOMCAT_URL = 'http://13.233.15.162:8080'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', credentialsId: 'Git-password', url: 'https://github.com/charannk007/Farm-App-Maven.git'
            }
        }

        stage('Build the Project') {
            steps {
                script {
                    echo "Maven Home: ${env.MAVEN_HOME}"
                    sh "${MAVEN_HOME}/bin/mvn -version" // Check Maven version
                    sh "${MAVEN_HOME}/bin/mvn clean package" // Run Maven build
                }
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                sshagent(['TOmcat-ssh']) {
                    script {
                        def warFile = 'target/Farm.war'
                        def deployUrl = "${env.TOMCAT_URL}/manager/text/deploy?path=/FarmApp&update=true"
                        
                        echo "Deploying ${warFile} to ${deployUrl}"

                        // Debugging: Check if the WAR file exists
                        sh "ls -l ${warFile}"

                        sh """
                        curl --upload-file ${warFile} --user admin:admin "${deployUrl}"
                        """
                    }
                }
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: '**/target/*.jar', allowEmptyArchive: true
            cleanWs()
        }
        failure {
            echo 'Build or Deployment failed!'
            // Additional failure handling steps can be added here
        }
    }
}
