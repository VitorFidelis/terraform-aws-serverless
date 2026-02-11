resource "aws_security_group_rule" "allow_lambda_to_rds" {
  type                     = "ingress"
  from_port                = 5432
  to_port                  = 5432
  protocol                 = "tcp"
  security_group_id        = data.aws_security_group.rds_existing.id
  source_security_group_id = aws_security_group.lambda_sg.id
}
