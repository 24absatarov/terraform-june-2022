module "ec2" {
  source        = "../../modules/ec2" # Local module needs an absolute path to the Child Module
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  env           = "dev"
}

Root Module = is a place where you run Terraform Commands, call Child modules
Child Module = is a place where 