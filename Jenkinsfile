@Library('Mylibrary') _
 pipeline {
      agent any
        stages {
              stage('jb-hello-world-maven'){
                steps{
                    hello.checkout_git()
                }
              }
            stage ('checkout code from git'){
                steps{
                    script
                     {
                         checkout_git.checkout_git()    
                    }
                }
            }

            stage('triggering awscodebuild') {
                steps {
                    script
                   {
                      awscodebuild.awscodebuild() 
                    }
               }
            }
        }
 }