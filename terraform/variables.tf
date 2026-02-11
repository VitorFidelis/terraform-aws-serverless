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
  default     = "ms-medicamentos-http-api"
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
  default     = "ms_medicamentos"
}

variable "aws_lambda_function_runtime" {
  description = "Runtime da função Lambda"
  type        = string
  default     = "java17"
}

variable "aws_lambda_function_handler" {
  description = "Handler da função Lambda"
  type        = string
  default     = "br.org.sus.ms_medicamentos.MsMedicamentosLambdaHandler::handleRequest"
}

variable "aws_lambda_function_filename" {
  description = "Caminho do pacote da função Lambda"
  type        = string
  default     = "../lambda/target/lambda.zip"
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
  default     = "app_user"
}

variable "aws_db_instance_db_password" {
  description = "Senha do banco de dados RDS PostgreSQL"
  sensitive = true
}

# Variáveis para configuração do bucket S3 para o jar da Lambda

variable "lambda_jar_file" {
  description = "Caminho local do jar da Lambda"
  type        = string
  default     = "../lambda/target/ms-medicamentos-0.0.1-SNAPSHOT.jar"
}

variable "lambda_s3_bucket" {
  description = "Nome do bucket S3 para o jar da Lambda"
  type        = string
  default     = "lambda-ms-medicamentos-bucket"
}

variable "lambda_s3_key" {
  description = "Nome do arquivo no S3"
  type        = string
  default     = "ms-medicamentos-0.0.1-SNAPSHOT.jar"
}