pipeline {
    agent { docker { image 'sieve:v1' } }
    stages {
        stage('build') {
            steps {
                sh './main.sh'
            }
        }
    }
}
