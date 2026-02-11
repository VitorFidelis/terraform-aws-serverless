# Criando a API Gateway HTTP'
resource "aws_apigatewayv2_api" "http_api" {
    description = "API Gateway HTTP - Infra base"
    name          = var.aws_apigatewayv2_api_name
    protocol_type = "HTTP"

}

# Criando o estágio "dev" para a API Gateway HTTP
resource "aws_apigatewayv2_stage" "dev" {
    api_id      = aws_apigatewayv2_api.http_api.id
    name        = var.aws_apigatewayv2_stage_name
    auto_deploy = true
}
