
cloudProvider=["aws","azure"]
region=[
    "aws":["us-west-2","us-east-1","eu-west-1"],
    "azure":["Us-West","Germay-West"]
]
namespaces=[
    "aws":[
        "us-west-2":["product-usw1","product-usw3","product-usw3"],
        "us-east-1":["product-use2","product-use4","product-use6"],
        "eu-west-1":["product-euw1"]
        ],
    "azure":[
        "US-West":["product-usw1","product-usw3"],
        "Germay-West":["product-emc"]
         ]  
]

default=["Non Applicable"]

String populateRegion(List cloudProvider, List region,List namespaces){
return """if(cloudProvider.equals('aws')){
     return $region[aws]
     }
     else if(cloudProvider.equals('azure')){
     return $region[azure]
     }else{
     return $default_item
     }
     """
}

String populatenamespaces(List cloudProvider, List region,List namespaces){
return """
    result=[]
    if(cloudProvider.equals('aws')){
     return $region[aws]
     }
     else if(cloudProvider.equals('azure')){
     return $region[azure]
     }else{
     return $default_item
     }
     """
}

properties(
    [
    parameters(
        [
        [$class: 'ChoiceParameter', 
        choiceType: 'PT_SINGLE_SELECT',   
        name: 'Categories', 
        script: [
        $class: 'GroovyScript', 
        fallbackScript: [
            classpath: [],
            sandbox: false, 
            script: 'return ["ERROR"]'
            ], 
        script: [
        classpath: [],
        sandbox: false,
        script:  categories
        ]
        ]
        ],
[$class: 'CascadeChoiceParameter', choiceType: 'PT_SINGLE_SELECT',name: 'Items', referencedParameters: 'Categories', script: [$class: 'GroovyScript', fallbackScript: [classpath: [], sandbox: false, script: 'return ["error"]'], script: [classpath: [], sandbox: false, script: items]]]
    ]
    )
]
)

pipeline {
    agent 'master'
stages {
   stage('Build'){
    steps {
       echo 'Building..'
      }
    }
   }
}