# Output do URL base do API Gateway HTTP
output "api_gateway_url" {
  description = "URL base do API Gateway"
  value       = aws_apigatewayv2_api.http_api.api_endpoint
}

output "lambda_function_name" {
  description = "Nome da função Lambda"
  value       = aws_lambda_function.helloworld.function_name
}

output "db_endpoint" {
  value = aws_db_instance.postgres.endpoint
}

output "db_port" {
  value = aws_db_instance.postgres.port
}
