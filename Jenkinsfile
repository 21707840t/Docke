pipeline {
    agent any

    stages {
        stage('clone') {
            steps {
                git credentialsId: 'gitlabssh', url: 'git@gitlab.com:khlifidev1/projet_j2e.git'
            }
        }
    
    
         stage('Build') {
            agent {
                docker {
                    image 'maven:3.8.6-openjdk-11-slim'
                    // Run the container on the node specified at the
                    // top-level of the Pipeline, in the same workspace,
                    // rather than on a new node entirely:
                    reuseNode true
                }
            }
            steps {
                sh 'mvn install package'
            }
        }
        stage('dockerfile') {
            agent {
    // Equivalent to "docker build -f Dockerfile.build --build-arg version=1.0.2 ./build/
         dockerfile {
        filename 'Dockerfile'
        //dir 'build'
        label 'myimage'
        //additionalBuildArgs  '--build-arg version=1.0.2'
        //args '-v /tmp:/tmp'
            }
       }
       steps {
                sh 'echo "done"'
            }
       
   }
           
            
     }
}
