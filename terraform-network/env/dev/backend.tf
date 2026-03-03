
terraform {
  backend "s3" {
    bucket         = "AWS-TERRAFORM-TEMPLATE-UNIQUE-TFSTATE-BUCKET-NAME"
    key            = "dev/network/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}