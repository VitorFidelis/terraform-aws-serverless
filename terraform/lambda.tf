# Criaçao de uma funçao lambda na AWS
resource "aws_lambda_function" "ms_medicamentos" {
    description = "MS Medicamentos - Spring Boot + Lambda"
    function_name = var.aws_lambda_function_name
    role          = data.aws_iam_role.lambda_role.arn

    s3_bucket = aws_s3_bucket.lambda_bucket.id
    s3_key    = aws_s3_object.lambda_jar.key

    runtime = var.aws_lambda_function_runtime
    handler = var.aws_lambda_function_handler

    filename = var.aws_lambda_function_filename
    source_code_hash = filebase64sha256(var.aws_lambda_function_filename)

    timeout     = 30
    memory_size = 1024

}
