pipeline {
    agent any 
    stages {
        stage('Code check out') {
            steps {
                git url: 'https://github.com/adilxpathan/packer.git', branch: 'main'
            }
        }
        
        stage('Packer init') {
            steps {
                sh 'packer init ./packer/awspkr.pkr.hcl'
            }
        }

        stage('Packer Vlaidate') {
            steps {
                sh 'packer validate ./packer/awspkr.pkr.hcl'
            }
        }

        stage('Packer build') {
            steps {
                sh 'packer build ./packer/awspkr.pkr.hcl'
            }
        }
    }
}