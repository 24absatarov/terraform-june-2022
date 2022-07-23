# Under every single resource:
# tags = local.common_tags

# Why do we need local values?
# Naming and Tagging Standards
# Why do we need Tags actually? to specify like cost-allocation tags in aws

# Naming Standard:
# 1. What Cloud Provider? = aws
# 2. What is the account? = non-prod, prod
# 3. What is the environment? = dev, qa, stage, prod
# 4. What is the region? = us-west-2, us-east-1
# 5. What is the project? = wordpress, matrix, apple

# How does it look?
# aws-nonprod-us-west-2-dev-matrix-${resource}

# Tagging standard/Common_Tags:
# 1. environment    = var.environment
# 2. project        = var.project
# 3. team           = var.team
# 4. owner          = var.owner
# 5. managed_by     = Terraform
# 6. organization   = var.organization