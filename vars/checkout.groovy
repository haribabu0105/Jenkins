def checkout_git() {
    echo" checkout code from git."
    git credentialsId: 'hari', url: 'git@github.com:haribabu0105/hello-world-war.git'

}

return this

