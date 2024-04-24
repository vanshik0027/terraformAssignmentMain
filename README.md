# Terraform Assignment

This repository contains Terraform scripts to create a custom VPC and deploy two EC2 VMs on AWS. The code is structured into three different parts:

1. **Networking**: Defines the VPC and all of its components.
2. **SSH-Key**: Dynamically creates an SSH-key pair for connecting to VMs.
3. **EC2**: Deploys a VM in the public subnet and another VM in a private subnet.

## File Structure

terraformAssigmentMain

├── ec2.tf

├── Jenkinsfile

├── network.tf

├── provider.tf

├── script.sh

├── ssh_key.tf

├── terraform.tfstate

├── terraform.tfstate.backup

├── terraform.tfvars

└── variables.tf

## Prerequisites

Before running the Terraform scripts and Jenkins pipeline, ensure you have the following prerequisites:

1. **Terraform**: Install Terraform on your local machine.

2. **AWS Credentials**: Set up AWS credentials either by exporting environment variables (`AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`) or by using AWS CLI (`aws configure`).

4. **Jenkins**: Install and configure Jenkins on your server or local machine

5. **Jenkins AWS Credentials**: Configure AWS credentials in Jenkins. Go to Jenkins Dashboard > Manage Jenkins > Manage Credentials > (select appropriate domain) > Add Credentials. Add AWS_Access_Key_ID and Secret_Access_Key.

## Usage

1. Clone the repository:

```bash
git clone https://github.com/vanshik0027/terraformAssignmentMain.git
cd terraformAssigmentMAIN
```

2. Modify terraform.tfvars with your AWS credentials and other necessary variables.

3. Run Terraform commands to create the infrastructure:-
```bash
terraform init
terraform plan
terraform apply
```
## Jenkins Pipeline

This repository includes a Jenkinsfile for automating Terraform deployment with Jenkins Pipelines. Follow these steps to set up the pipeline:

1. **Access Jenkins**: By default, Jenkins runs on `localhost:8080`. Access Jenkins through your web browser using this URL.

2. **Change Default Credentials**: After accessing Jenkins, follow the initial setup instructions to change the default credentials for security purposes.

3. **Declare AWS Credentials as Environment Variables**: In Jenkins, go to Jenkins Dashboard > Manage Jenkins > Manage Credentials > (select appropriate domain) > Add Credentials. Add AWS_Access_Key_ID and Secret_Access_Key as environment variables.

4. **Configure Jenkins Pipeline**: Create a new pipeline job in Jenkins and configure it to use the Jenkinsfile provided in this repository. Set up necessary parameters like GitHub repository URL and branch to trigger the pipeline.

5. **Monitor Pipeline Execution**: Monitor the pipeline execution in Jenkins to ensure that Terraform deployment is successful.

By following these steps, you can automate the deployment of your Terraform infrastructure using Jenkins pipelines, ensuring efficient and consistent deployments.


## Conclusion

By utilizing Terraform and Jenkins together, you can automate the provisioning of AWS infrastructure such as VPCs and EC2 instances. Terraform allows you to define your infrastructure as code, making it reproducible and easily manageable, while Jenkins enables you to automate the deployment process through pipelines, ensuring consistency and efficiency.

With this setup, you can:

- Dynamically create and manage VPCs, subnets, security groups, and EC2 instances using Terraform.
- Automate the deployment process, including provisioning and updating infrastructure, using Jenkins pipelines.
- Ensure reliability and consistency in your infrastructure deployments while reducing manual intervention and human error.

By combining the power of Terraform and Jenkins, you can streamline your infrastructure management and deployment workflows, making them more scalable, reliable, and efficient.




