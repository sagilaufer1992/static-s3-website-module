provider "aws" {
  region  = "us-east-1"
}

terraform {
  required_version = ">= 1.2"

  required_providers {
    aws = "~> 2.0"
    random = ">= 3.4.3"
  }
}
