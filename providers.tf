terraform {
  backend "s3" {
    bucket = "terraform-state-file-bucket"
    key    = "test/terraform.tfstate"
    region = "ap-south-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region                   = "ap-south-1"
  # shared_credentials_files = ["~/.aws/credentials"]
  # access_key = '${{ secrets.AWS_ACCESS_KEY_ID }}'
  # secret_key = '${{ secrets.AWS_SECRET_ACCESS_KEY }}'
}
