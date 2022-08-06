
pipeline{
    agent{
        node{
            label 'master'
        }
    }

    parameters{
        string(name: 'jenkins_label', defaultValue: 'master', description: 'Where should the stages run')

        text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')

        booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')

        choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')

        password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
    }

    stages{
        agent{
                label ${params.jenkins_label}
        }
        stage('Sequential Stage1'){
            steps{
                echo "Sequential Stage 1"
            }
        }
        stage('Sequential Stage2'){
            steps{
                echo "Sequential Stage 2"
            }
        }
        stage('Parallel Stages'){
            parallel{
                stage('parallel Stage1'){
                    steps{
                        echo "Parallel Stage1"
                    }
                }
                stage('Parallel Stage2'){
                    steps{
                        echo "Parallel Stage2"
                    }
                }
            }

        }
    }
}