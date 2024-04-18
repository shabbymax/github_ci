pipeline {
  agent {label "Linux"}
  stages {
    stage('Test SSH-connection') {
      steps {
        echo "Connection..."
        sshagent(credentials: ['aws_jenkins_test']) {
            sh "ssh -o StrictHostKeyChecking=no ubuntu@54.193.204.29 'date'"
            sh "ssh -o StrictHostKeyChecking=no ubuntu@54.193.204.29 'whoami'"
        }
      }
    }
  }
}
