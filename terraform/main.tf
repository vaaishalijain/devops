terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~>4.16"
        }
    }

    required_version = ">= 1.2.0"
}

provider "aws" {
    region = "us-west"  # Set your desired AWS region
}

resource "aws_instance" "app_server" {
    ami           = "ami-0c55b159cbfafe1f0"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"

    tags = {
        Name = "Terraform_Demo"
    }
}