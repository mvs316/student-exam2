node("my_agent") {
    def myImage
    stage('Clone repository') {
        checkout scm
    }
    
    stage('Build image') {
         myImage = docker.build("vmarkovskii/student-exam2:web_app")
    }
    
    stage('Testing') {
        sh './tests.sh'
    }

    stage('Auth and push image'){
        docker.withRegistry('https://registry.hub.docker.com/', 'dockerHub') {
            myImage.push()
        }
    }
}
    
