data "aws_iam_role" "lambda_role" {
    description = "Data source para obter a role do Lambda"
    name = "lambda-hello-java-role"
}
