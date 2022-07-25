variable "ami" {
  type        = string
  description = "This is a variable for Amazon Machine Image"
  default     = "ami-0cff7528ff583bf9a"
}
variable "instance_type" {
  type        = string
  description = "This is an Instance type for EC2"
  default     = "t2.micro"
}
variable "key_name" {
  type        = string
  description = "This is a Key Pair for EC2"
  default     = "MyRazerKey"
}
variable "env" {
  type        = string
  description = "This variable represents the environment"
  default     = "Dev"
}
variable "ingress_ports" {
  type        = list(string)
  description = "This is a list of ports for ingress rule"
  default     = [ "22", "80", "443"]
}