// This pipeline we will create will choice parameters

pipeline{
    parameters {
        string(name: 'node-label', defaultValue: 'master', description: 'Where should this pipeline run')
        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')

        text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')

        booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')

        choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')

        password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
    }
    agent{
        node{
            label '${params.node-label}'
        }
    }
    stages{
        stage('Git checkout'){
            steps{
                checkout scm
            }
        }
        stage('Print Params'){
            steps{
                echo "${params.PERSON}"
                echo "${params.BIOGRAPHY}"
                echo "${params.TOGGLE}"
                echo "${params.CHOICE}"
                echo "${params.PASSWORD}"
            }
        }
    }
}