terraform {
  backend "s3" {
    bucket         = "daniel-terraform-session-backend-bucket"
    key            = "session-10/terraform.tfstate" # Prefix
    region         = "us-east-1"
    dynamodb_table = "terraform-june-2022-state-lock-table"
  }
}