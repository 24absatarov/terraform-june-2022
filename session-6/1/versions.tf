terraform {
  required_version = "~> 1.2.4"
    required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "~> 4.21.0" # 4.21.0 < x < 4.22.0
    }
  }
}