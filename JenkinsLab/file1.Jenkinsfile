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
                    cd /data3/
                    mkdir -p namespace1/configs namespace2/configs
                    echo "Directories created"

                '''
            }
        }
    }
}