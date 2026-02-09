# Configura o provedor AWS
provider "aws" {
    description = "Configuração do provedor AWS"
    region = var.aws_region
}