#This Terraform Code Deploys Basic VPC Infra.
provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.aws_region}"
}
# Terraform Backend For terraform state file versioning.
#terraform {
#  backend "s3" {
#    bucket = "yerramsettiveeraganeshdev"
#    key = "terraform.tfstate"
#    region = "us-east-1"
#    access_key = "var.aws_access_key"
#    secret_key = "var.aws_secret_key"
#    dynamodb_table = "terraform-state-lock-dynamo"  # To integrate the Dynamo DB Table and S3 for State file Versioning.
#  }
#}
# Terraform Dynamo DB Table creation for terraform state file locking for multiple commits.
# resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
#   name = "terraform-state-lock-dynamo"
#   hash_key = "LockID"
#   read_capacity = 20
#   write_capacity = 20
 
#   attribute {
#     name = "LockID"
#     type = "S"
#   }
 
#   tags = {
#     Name = "DynamoDB Terraform State Lock Table"
#   }
# }
