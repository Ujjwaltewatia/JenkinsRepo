pipeline{
    agent any
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
                    sh scripts/createfolder.sh
                '''
            }
        }
    }
}