# Output do URL base do API Gateway HTTP
output "api_gateway_url" {
  description = "URL base do API Gateway"
  value       = aws_apigatewayv2_api.http_api.api_endpoint
}
