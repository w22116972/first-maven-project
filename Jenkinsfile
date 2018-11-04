pipeline {
    agent any
    tools {
        maven 'localMaven'  // same as Maven Name in global tool config in jenkins
    }
    stages{
        stage('Build'){
            steps {
                sh 'mvn clean package'
                sh 'docker build . -t tomcatwebapp:${env.BUILD_ID}'
            }
//            post {
//                success {
//                    echo 'Now Archiving...'
//                    archiveArtifacts artifacts: '**/target/*.war'
//                }
//            }
        }
//        stage('Deploy to Staging') {
//            steps {
//                build job: 'Deploy-to-staging'
//            }
//        }
//        stage('Deploy to Production'){
//            steps{
//                timeout(time:5, unit:'DAYS'){
//                    input message: 'Approve PRODUCTION deployment?'
//                }
//                build job: 'Deploy-to-Prod'
//            }
//            post {
//                success {
//                    echo 'Code deployed to Production'
//                }
//                failure {
//                    echo 'Deployment failed'
//                }
//            }
//        }
    }
}