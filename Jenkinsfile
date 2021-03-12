node("my_agent") {
    def myImage
    # stage('Initialize'){
     #   def dockerHome = tool 'myDocker'
    #    env.PATH = "${dockerHome}/bin:${env.PATH}"
   # }
    stage('Clone repository') {
        checkout scm
    }

    stage('Build image') {
         myImage = docker.build("vmarkovskii/student-exam2:web_app")
     #    args '-v /var/run/docker.sock:/var/run/docker.sock'

    }
    stage('Testing') {
        sh tests.sh
    }
    stage('Auth and push image'){
        docker.withRegistry('https://registry.hub.docker.com/', 'dockerHub') {
            myImage.push()
        }
    }
}
    
