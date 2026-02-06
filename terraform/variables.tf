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

# Variáveis para configuração do estágio da API Gateway HTTP
variable "aws_apigatewayv2_stage_api_id" {
  description = "ID da API Gateway HTTP"
  type        = string
  default    = aws_apigatewayv2_api.http_api.id
}

variable "aws_apigatewayv2_stage_name" {
  description = "Nome do estágio da API Gateway HTTP"
  type        = string
  default     = "dev"
}