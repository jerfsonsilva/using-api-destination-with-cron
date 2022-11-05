terraform {
  required_version = "1.3.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.63.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

