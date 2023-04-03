node{
    
    
    stage('clone'){
        
        
        git credentialsId: 'id_gitlab', url: 'git@gitlab.com:khlifidev1/projet_j2e.git'
        
       
    }
    
    stage('Build'){
        
        withEnv(["JAVA_HOME=${ tool 'java' }", "PATH+MAVEN=${tool 'maven'}/bin:${env.JAVA_HOME}/bin"]) {
            
            sh 'mvn clean install package'
            
        }
        
        
    }
    
    
    stage('Deploy'){
        
        deploy adapters: [tomcat8(credentialsId: 'id_tomcat', path: '', url: 'http://192.168.0.5:8080')], contextPath: null, war: '**/*.war'
    }
    
    
    
    
    
    
    
    
    
}
