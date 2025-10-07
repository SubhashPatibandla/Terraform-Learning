terraform {
  backend "s3" {
    bucket         = "subhash-statefile" # bucket name as created in resource block
    key            = "Dev/terraform.tfstate" #foldername/filename
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"  #name of the dynamodb table created in resource block
  }
}