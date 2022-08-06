pipeline{
    agent any
    stages{
        stage("Create Folders"){
            step{
                sh '''
                    cd /data3/
                    mkdir -pf namespace1/configs namespace2/configs
                    echo "Directories created"

                '''
            }
        }
    }
}