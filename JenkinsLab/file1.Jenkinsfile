pipeline{
    agent {
        node{
            label 'master'
        }
    }
    options{
        buildDiscarder(logRotator(numToKeepStr: '4'))
    }
    stages{
        stage("git checkout"){
            steps{
                checkout scm
            }
        }
        stage("Create Folders"){
            steps{
                sh '''
                    pwd
                    ls -la
                    chmod +x scripts/createfolder.sh
                    ./scripts/createfolder.sh
                '''
            }
        }
    }
    post{
        success{
            echo "Pipeline Succeeded :)"
        }
    }
}