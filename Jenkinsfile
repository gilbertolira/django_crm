pipeline {
    agent any

    stages {
                
        stage("Baixando a imagem"){
            steps {
                git url: 'https://github.com/gilbertolira/django_crm.git', branch: 'develop'
            } 
        }

        stage ("Build Image"){
            steps{
                script{
                  sh 'ls -al'
                  sh 'ls -al ./app'
                  dockerImage =  docker.build("betolira/django-crm:${env.BUILD_ID}", '-f ./app/Dockerfile .')
                }
            }

        }

        stage ("Push Image") {
            steps{
                script{
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub'){
                    dockerImage.push('latest')
                    dockerImage.push("${env.BUILD_ID}")
                    }
                }
            }
        }

         stage("Deploy"){
            steps {
                sh 'kubectl apply -f ./k8s/deployment.yaml'
            }        
        }
       
        
    }
}    

        