terraform {
    backend "s3" {
        bucket         = "daniel-terraform-session-backend-bucket"
        key            = "session-6/dev/terraform.tfstate"
        region         = "us-east-1"
        dynamodb_table = "terraform-june-2022-state-lock-table"
  }
}

# In backend.tf, you cannot pass any variables