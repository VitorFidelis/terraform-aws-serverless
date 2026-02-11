resource "aws_s3_bucket" "lambda_bucket" {
  bucket = var.lambda_s3_bucket

  tags = {
    Name = "Lambda Bucket"
  }
}

resource "aws_s3_bucket_versioning" "lambda_bucket_versioning" {
  bucket = aws_s3_bucket.lambda_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}


# Permissão pública desabilitada (segura)
resource "aws_s3_bucket_public_access_block" "block_public" {
  bucket = aws_s3_bucket.lambda_bucket.id

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls  = true
  restrict_public_buckets = true
}

# Upload do jar local para o S3
resource "aws_s3_object" "lambda_jar" {
  bucket = aws_s3_bucket.lambda_bucket.id
  key    = var.lambda_s3_key
  source = var.lambda_jar_file
}
