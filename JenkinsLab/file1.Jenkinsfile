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
                    namespace_dir=("namespace1/configs" "namespace2/configs")
                    echo "${namespace_dir[0]}"
                    for i in {0..${#namespace_dir[@]}..1}
                      do
                        if -d ${namespace_dir[i]}
                          then
                            echo "Directory Already Exists"
                        else
                          mkdir -p namespace1/configs namespace2/configs
                          echo "Directory ${namespace_dir[i]} created"
                        fi
                    done

                '''
            }
        }
    }
}