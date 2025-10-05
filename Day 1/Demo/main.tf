provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

 resource "aws_instance" "example" {
   ami           = "ami-0360c520857e3138f"  # Specify an appropriate AMI ID
   instance_type = "t2.micro"
   count = 2
 }

 resource "aws_s3_bucket" "example" {
  bucket = "my-tf-bucket-12345-subhash"
}


