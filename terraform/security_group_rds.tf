# Security Group para RDS PostgreSQL
resource "aws_security_group" "rds_sg" {
  name        = "rds-postgres-sg"
  description = "Security Group para RDS PostgreSQL"

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # ⚠️ só para estudo
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
