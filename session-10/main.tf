module "s3" {
    source = "github.com/aKumoSolutions/terraform-june-2022/modules/s3/"
    env = "dev"
    my_name = "daniel"
}
# module "vpc" {
#     source = "terraform-aws-modules/vpc/aws"
#     version = "3.14.2"
#     cidr = "10.0.0.0/16"
# }
module "ec2" {
    source = "github.com/24absatarov/terrraform-june-2022/modules/ec2/"
    env = "dev"
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
    s3_bucket_name = module.s3.id
}