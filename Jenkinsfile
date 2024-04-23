pipeline {
    agent any
    
    parameters {
        choice(name: 'action', choices: ['apply', 'destroy'], description: 'Select the action to perform')
    }
    
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION    = 'us-east-1'

    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/vanshik0027/terraformAssignment.git'
            }
        }
        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform Plan') {
            steps {
                script {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }
        stage('Terraform Apply / Destroy') {
            steps {
                script {
                    if (params.action == 'apply') {

                        sh 'terraform init && terraform plan && terraform apply --auto-approve'

                    } else if (params.action == 'destroy') {
                        sh 'terraform init && terraform plan && terraform destroy --auto-approve'
                    } 
                }
            }
        }
    }

    
}