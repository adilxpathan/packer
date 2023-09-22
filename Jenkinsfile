pipeline {
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS-screte	')
        AWS_SECRET_ACCESS_KEY = credentials('aws-access	')
    }
    agent any 
    stages {
        stage('Code check out') {
            steps {
                git url: 'https://github.com/adilxpathan/packer.git', branch: 'main'
            }
        }
        
        stage('Packer init') {
            steps {
                sh 'packer init .'    
            }
        }

        stage('Packer Vlaidate') {
            steps {
                sh 'packer validate -var-file="variables.pkrvars.hcl" .'
            }
        }

        stage('Packer build') {
            steps {
                sh 'packer build -var-file="variables.pkrvars.hcl" .'
            }
        }
    }
}