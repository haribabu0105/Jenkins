@Library('Mylibrary') _
 pipeline {
      agent any
        stages 
            {  
            stage ('checkout code from git'){
                steps{
                     
                     parallel (
                 "1": {dir ("sparkjava-war-example") {script {checkout_git.checkout_git("sparkjava-war-example","master") } } },  
                  "2": {dir("java-hello-world-with-maven"){script {checkout_git.checkout_git("java-hello-world-with-maven","master")}}}
                     )
                }
            }

            stage('triggering awscodebuild') {
                steps {
                     parallel (
                 "1": {dir ("sparkjava-war-example") {script {awscodebuild.awscodebuild("jenkins3") } } },  
                  "2": {dir("java-hello-world-with-maven"){script {awscodebuild.awscodebuild("jenkins2")}}}
                     ) 
               }
            }
        }
    }