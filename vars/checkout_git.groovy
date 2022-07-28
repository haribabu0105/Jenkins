def checkout_git(String repo, String branch) {
    echo" take code from git."
      git credentialsId: 'hari', url: "git@github.com:haribabu0105/${repo}.git", branch: "${branch}"

}

return this

