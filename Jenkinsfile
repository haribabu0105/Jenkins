@Library('Mylibrary') _
 pipeline {
      agent any
        stages {

            stage ('checkout code from git'){
                steps{
                       script {checkout_git.checkout_git("sparkjava-war-example", "master")}   
                    }
                }

            stage('triggering awscodebuild') {
                steps {
                      script {awscodebuild.awscodebuild("jenkins3")} 
                    }
               }
            stage('deploy java to tomcat') {
            steps {
                 script {deploy_tomcat.deploy_tomcat()}
                
            }
        }       
     }       }
        
 }