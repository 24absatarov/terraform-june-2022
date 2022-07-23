resource "aws_db_instance" "main" {
    allocated_storage       = 10
    engine                  = "mysql"
    engine_version          = "5.7"
    instance_class          = "db.t3.micro"
    db_name                    = "wordpress"
    username                = "daniel"
    password                = random_password.db_password.result
    parameter_group_name    = "default.mysql5.7"
    publicly_accessible     = var.env == "dev" ? true : false
    skip_final_snapshot     = var.env != "dev" ? true : false
    final_snapshot_identifier= var.env != "prod" ? null : "${var.env}-final-snapshot"
}

# == "equal"
# = "name and value, key and value, argument and value"

# Equality Operator

# a==b is true if they have same type or value, otherwise false

# black == red > false
# red == red > true
