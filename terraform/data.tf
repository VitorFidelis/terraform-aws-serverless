data "aws_iam_role" "lambda_role" {
    name = "lambda-hello-java-role"
}

data "aws_security_group" "rds_existing" {
  name   = "rds-postgres-sg"
  vpc_id = var.vpc_id
}

