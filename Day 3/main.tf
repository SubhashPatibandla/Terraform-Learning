provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "abhishek" {
  instance_type = "t2.micro"
  ami = "ami-053b0d53c279acc90" # change this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "subhash-statefile" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock" #name of the dynamodb table
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID" #terraform reaches the main door to check who is running it, at present.

  attribute {
    name = "LockID" #main door name for terraform
    type = "S"
  }
}