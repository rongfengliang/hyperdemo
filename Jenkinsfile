pipeline {
  agent {
    node {
      label 'docker-65'
    }
    
  }
  stages {
    stage('docker-build-latest') {
      steps {
        sh 'docker build -t myhyper .'
      }
    }
  }
}