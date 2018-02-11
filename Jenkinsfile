node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */
        checkout scm
    }

    stage('Build image') {
        ansiColor('xterm') {
            dir("${env.WORKSPACE}") {
                app = docker.build("demo-nodeapp")
            }
        }
    }    

    stage('Test image') {
        /* Ideally, we would run a test framework against our image.
         * For this example, we're using a Volkswagen-type approach ;-) */
        ansiColor('xterm') {
            app.inside("-u root:root") {                
                sh 'cd /usr/src/app && npm test'                            
            }
        }
    }

}
