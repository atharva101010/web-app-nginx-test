pipeline{
    
    agent any
    
    stages{
        stage("Git-clone"){
            steps{
                git branch: 'main', url: 'https://github.com/atharva101010/web-app-nginx-test.git'
            }
        }
        stage("Dockerfile-Execution"){
            steps{
                sh '''echo "Checking if the container is present...."
                docker stop nginx_container || true
                docker rm nginx_container || true 
                
                echo "Building the image..."
                docker build -t nginx_image .
                
                echo "Running the container..."
                docker run -d -p 81:80 --name nginx_container nginx_image '''
            }
        }
    }
}