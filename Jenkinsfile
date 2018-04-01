node{
    stage('git clone'){
       git url: 'https://github.com/xbox1994/chicken-html.git'
    }

    stage('test'){
        sh "echo 'test done'"
    }

    stage('build'){
        sh "./build.sh"
    }

    stage('deploy'){
        sh "./deploy.sh"
    }
}