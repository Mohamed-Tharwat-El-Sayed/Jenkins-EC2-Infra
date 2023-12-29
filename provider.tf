terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  shared_config_files      = ["$HOME/.aws/config"]
  shared_credentials_files = ["$HOME/.aws/credentials"]
  profile                  = var.profile
  region                   = var.region
#access_key = "your-access-key"
#secret_key = "your-secret-key"
#region     = "us-east-1"
}
