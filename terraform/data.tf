data "aws_iam_role" "lambda_role" {
    name = "lambda-hello-java-role"
}

data "aws_vpc" "default" {
  default = true
}

data "aws_security_group" "rds_existing" {
  name   = "rds-postgres-sg"
  vpc_id = data.aws_vpc.default.id
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}



