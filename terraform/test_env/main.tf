#This Terraform Code Deploys Basic VPC Infra.
provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.aws_region}"
}
#terraform {
#  backend "s3" {
#    bucket = "yerramsettiveeraganesh_test"
#    key = "terraform.tfstate"
#    region = "us-east-1"
#    access_key = "${var.aws_access_key}"
#    secret_key = "${var.aws_secret_key}"
#  }
#}

