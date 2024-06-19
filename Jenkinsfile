pipeline {
    agent any

    stages {
        
        stage("deploy"){
            steps {
                echo "realizando o deploy..."
            }        
        }
        
        stage("Baixando a imagem"){
            steps {
                git url: 'https://github.com/gilbertolira/django_crm.git', branch: 'develop'
            } 
        }

        stage ("Build Image"){
            steps{
                script{
                  sh 'ls -al'
                  dockerImage =  docker.build("betolira/django-crm:${env.BUILD_ID}", '-f ./django_crm/app/Dockerfile .')
                }
            }

        }

        stage ("Push Image") {
            steps{
                script{
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub'){
                    dockerImage.push('latest')
                    dockerImage.push("${nv.BUILD_ID}")
                    }
                }
            }
        }
       
        
    }
}    

        