@Library('Mylibrary') _
 pipeline {
      agent any
        stages {

            stage ('checkout code from git'){
                steps{
                      dir("sparkjava-war-example"){script {checkout_git.checkout_git("sparkjava-war-example", "master")}}
                     } 
                                            }

               stage('create tag on git repo') {
                steps{                                
                     dir("sparkjava-war-example") {script {create_tag.create_tag("${tag}")}}
                     }
                                               }  

              stage('triggering awscodebuild') {
                steps{
                     dir("sparkjava-war-example"){script {awscodebuild.awscodebuild("jenkins3", "${tag}")}}
                     }
                                               }

            stage('deploy java to tomcat')     {
            steps { 
                    sh "echo env is ${ENVIRONMENT} "
                    script {deploy_tomcat.deploy_tomcat("${tag}", "${ENVIRONMENT}")}
                  }
                                               }   
                    
           }                 
        
 }