variable "env" {
    type = string
    description = "This represents environment"
    default = "dev"
}
variable "publicly_accessible" {
    type = bool
    description = "Allow Public Access"
    default = true
}