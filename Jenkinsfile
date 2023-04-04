pipeline {
  agent any
   tools {
        terraform 'Terraform'
    }
  stages {
    stage('Terraform Init') {
      steps {
         powershell("""
            cd lbvserver1
            terraform init
          """)
       }
     }
     stage('Terraform Plan') {
       steps {
          powershell("""
            cd lbvserver1
            terraform plan -var-file="../secret.tfvars"
          """)
        }
      }
     stage('Terraform Apply') {
      steps {
          powershell("""
            cd lbvserver1
            terraform apply -var-file="../secret.tfvars" -auto-approve
          """)
        }
      }
    }
}
