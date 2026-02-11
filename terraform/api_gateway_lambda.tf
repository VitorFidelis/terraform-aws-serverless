# API Gateway Integration with Lambda
resource "aws_apigatewayv2_integration" "lambda" {
  api_id                 = aws_apigatewayv2_api.http_api.id
  integration_type       = "AWS_PROXY"
  integration_uri        = aws_lambda_function.ms_medicamentos.invoke_arn
  payload_format_version = "2.0"
}
