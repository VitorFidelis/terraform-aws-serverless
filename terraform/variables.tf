# Variáveis globais para configuração do Terraform
#################################################

# Variáveis para configuração do provedor AWS

variable "aws_region" {
  description = "Região da AWS"
  type        = string
  default     = "us-east-1"
}

# Variáveis para configuração da API Gateway HTTP

variable "aws_apigatewayv2_api_name" {
  description = "Nome da API Gateway HTTP"
  type        = string
  default     = "example-http-api"
}

variable "aws_apigatewayv2_stage_name" {
  description = "Nome do estágio da API Gateway HTTP"
  type        = string
  default     = "dev"
}

# Variáveis para configuração da função Lambda

variable "aws_lambda_function_name" {
  description = "Nome da função Lambda"
  type        = string
  default     = "hello-world"
}

variable "aws_lambda_function_runtime" {
  description = "Runtime da função Lambda"
  type        = string
  default     = "java17"
}

variable "aws_lambda_function_handler" {
  description = "Handler da função Lambda"
  type        = string
  default     = "example.HelloLambda::RequestHandler"
}

variable "aws_lambda_function_filename" {
  description = "Caminho do pacote da função Lambda"
  type        = string
  default     = "../lambda/target/hello-lambda-1.0.0.jar"
}

# Variáveis para configuração do RDS PostgreSQL

variable "aws_db_instance_db_instance_class" {
  description = "Classe da instância do RDS PostgreSQL"
  type        = string
  default     = "db.t3.micro"
}

variable "aws_db_instance_db_name" {
  description = "Nome do banco de dados RDS PostgreSQL"
  type        = string
  default     = "exampledb"
}

variable "aws_db_instance_db_username" {
  description = "Nome de usuário do banco de dados RDS PostgreSQL"
  type        = string
  default     = "admin"
}

variable "aws_db_instance_db_password" {
  description = "Senha do banco de dados RDS PostgreSQL"
  sensitive = true
}