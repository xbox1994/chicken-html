node{
    stage('git clone'){
       git url: 'https://github.com/xbox1994/chicken-html.git'
    }

    stage('test'){
        sh "echo 'test done'"
    }

    stage('build'){
        sh "docker build . -t xbox1994/chicken-html"
    }

    stage('deploy'){
        sh "./deploy.sh"
    }
}