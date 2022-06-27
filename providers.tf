terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region                  = "ap-south-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "tftest"
}

terraform {
  backend "s3" {
    bucket = "awstfstatebucket"
    key    = "mytfstate.tfstate"
    region = "ap-south-1"
  }
}

