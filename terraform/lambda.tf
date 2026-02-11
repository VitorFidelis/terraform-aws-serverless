# Criaçao de uma funçao lambda na AWS
resource "aws_lambda_function" "ms_medicamentos" {
    description = "MS Medicamentos - Spring Boot + Lambda"
    function_name = var.aws_lambda_function_name
    role          = data.aws_iam_role.lambda_role.arn

    runtime = var.aws_lambda_function_runtime
    handler = var.aws_lambda_function_handler

    filename = var.aws_lambda_function_filename
    source_code_hash = filebase64sha256(var.aws_lambda_function_filename)

    timeout     = 30
    memory_size = 1024

}
