def checkout_git() {
    echo" checkout code from git."
      git branch: 'main', credentialsId: 'hari', url: 'git@github.com:haribabu0105/Jenkins.git'

}

return this

