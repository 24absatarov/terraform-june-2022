terraform {
  backend "s3" {
    bucket         = "daniel-terraform-session-backend-bucket"
    key            = "session-4/terraform.tfstate" # Prefix
    region         = "us-east-1"
    dynamodb_table = "terraform-june-2022-state-lock-table"
  }
}

# Terraform State Lock
# Terraform State Lock prevents from the accidentatl Apply or Destroy command or State Change
# It will make sure one apply or destroy at the time.
# Terraform State Lock uses DynomoDB table to lock every single executions