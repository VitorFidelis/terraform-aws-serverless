# Criaçao de uma funçao lambda na AWS
resource "aws_lambda_function" "helloworld" {
    description = "Função Lambda Hello World - Infra base"
    function_name = var.aws_lambda_function_name
    role          = data.aws_iam_role.lambda_role.arn

    runtime = var.aws_lambda_function_runtime
    handler = var.aws_lambda_function_handler

    filename = var.aws_lambda_function_filename

    timeout     = 30
    memory_size = 512
}
