#Every single Terraform Configuration file has a format called .tf

resource "aws_instance" "main" {
  count                  = 1
  ami                    = data.aws_ami.amazon_linux_2.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.main.id]
  key_name               = aws_key_pair.terraform_server_key.key_name
  tags = {
    Name  = "${var.env}-instance"
    Name2 = format("%s-instance", var.env)
  }
provisioner "file" {
  source = "/home/ec2-user/terrraform-june-2022/session-8/index.html" # Where is your file?
  destination = "/tmp/index.html" # Where do you wanna copy your file on Remote Machine?

  connection {
      type = "ssh"
      user = "ec2-user"
      host = self.public_ip
      private_key = file("~/.ssh/id_rsa")
      }
  }
  provisioner "remote-exec" {
    inline = [
      "sudo yum install httpd -y",
      "sudo systemctl start httpd",
      "sudo cp /tmp/index.html /var/www/html/index.html"
    ]
    connection {
      type = "ssh"
      user = "ec2-user"
      host = self.public_ip
      private_key = file("~/.ssh/id_rsa")
      }
  }
}


resource "aws_key_pair" "terraform_server_key" {
  key_name   = "Terraform-Server-Key"
  public_key = file("~/.ssh/id_rsa.pub")
}
resource "null_resource" "local_script" {
  provisioner "local-exec" {
      command = "touch /tmp/test.txt"
  }
}

# 1. Highlight + Command/Control + / = Comment or Uncomment
# 2. Command/Control + F = Find String

# Syntex is Hashicorp Configuration Language (HCL)

# Terraform has only 2 types blocks.
# 1. Resource = Create and Manage resources
# 2. Data Source 

# Each block expects label, Resource block expects 2 labels

# resource = block
# "aws_instance" = first label  = resource type      = Predifined by Terraform
# "first_ec2"    = second label = logical name or ID = defined by Author
# arguments = configuration or properties of your resource

# Nice to have:
# 1. Use _ instead of -
# 2. Use lower cases

# Working Directory is a place where you run Terraform Commands
# Terraform has a plugin based archicture
# Plugin = Feature

# Terraform.tfstate = Backend
# There are only 2 types of Backend
# - Local Backend = is within the Working Directory
# - Remote Backend = is in the Storage

# Reference to Resource:
# 1. aws_security_group = first label
# 2. main = second label
# 3. id = attribute

# What goes inside "" ?
# - String
# - Hard Coded Value
# - Static Value

# Reference = Dynamic
# In Terraform, Dynamic Values do not use ""

# What is a List?
# Fruit = [ apple, orange, banana ]
# Car   = [Ford, Mercedes, Lexus, BMW]