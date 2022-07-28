@Library('Mylibrary') _
 pipeline {
      agent any
        stages 
            {
              stage('Hello World') {
                steps {
                  script 
                {
                    hello.hello()
                }
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