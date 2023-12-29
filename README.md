# Terraform Project : Jenkins-EC2-Infra

**Creating Jenkins on AWS with Terraform
This Terraform script automates the deployment of a Jenkins server on AWS. The infrastructure includes a Virtual Private Cloud (VPC), default availability zone, subnet, security group, and an EC2 instance running Jenkins.**

## Prerequisites
Before you begin, ensure you have the following:

- An AWS account with the necessary permissions.
- AWS CLI installed and configured on your local machine.
- Terraform installed on your local machine.

## Configuration
1. Clone this repository:
```bash
git clone https://github.com/your-username/terraform-jenkins-aws.git
```

2. Open `Provider.tf` and update the variables with your AWS credentials, region, and any other configuration you want to customize.
```hcl
access_key = "your-access-key"
secret_key = "your-secret-key"
region     = "us-east-1"
```
3. Open `main.tf` and update `private_key` and any other configuration you want to customize.

3.Customize other settings in `variables.tf` if needed.

## Usage
1. Initialize Terraform:
```bash
terraform init
```

2. Plan the infrastructure:
```bash
terraform plan
```

3. Deploy the infrastructure:
```bash
terraform apply
```
Confirm with `yes` when prompted.

4. Wait for the deployment to complete. Once finished, Terraform will provide the public IP address of the Jenkins instance.

## Accessing Jenkins
1. Open a web browser and navigate to http://<Jenkins-Public-IP>:8080 or get it from end of `apply` Infra.
2. Retrieve the Jenkins initial admin password from end of `apply` Infra

## Cleanup
To destroy the infrastructure and release AWS resources:

```bash

terraform destroy
```
Confirm with yes when prompted.

## Contact

For inquiries, please contact [Mohamed Tharwat] at [Mohammed.Tharwat.Elsayed@gmail.com].


