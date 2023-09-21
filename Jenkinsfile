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
                sh 'cd packer && packer init awspkr.pkr.hcl -var-file="vars.pkrvars.hcl"'
            }
        }

        stage('Packer Vlaidate') {
            steps {
                sh 'cd packer && packer validate awspkr.pkr.hcl -var-file="vars.pkrvars.hcl"'
            }
        }

        stage('Packer build') {
            steps {
                sh 'cd packer && packer build awspkr.pkr.hcl -var-file="vars.pkrvars.hcl"'
            }
        }
    }
}