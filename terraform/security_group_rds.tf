resource "aws_security_group" "rds_sg" {
  name   = "rds-postgres-sg"
  vpc_id = data.aws_vpc.default.id
}
