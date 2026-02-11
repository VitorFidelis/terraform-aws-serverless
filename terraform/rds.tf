# This Terraform configuration defines an AWS RDS PostgreSQL instance with specific settings, including security group associations and backup configurations.
resource "aws_db_instance" "postgres" {
  identifier = "ms-medicamentos-db"

  engine            = "postgres"
  instance_class    = var.aws_db_instance_db_instance_class

  allocated_storage = 20
  storage_type      = "gp2"

  db_name  = var.aws_db_instance_db_name
  username = var.aws_db_instance_db_username
  password = var.aws_db_instance_db_password

  vpc_security_group_ids = [
    data.aws_security_group.rds_existing.id
  ]

  publicly_accessible = true
  skip_final_snapshot = true

  backup_retention_period = 0
}
