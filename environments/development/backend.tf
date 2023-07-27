## En este archivo, puedes configurar la persistencia del estado de Terraform, por ejemplo, almacenarlo en un bucket de S3 o un backend de Terraform Cloud


terraform {
  backend "s3" {
    bucket         = "terraform-bucket-juver"
    key            = "terraform-dev.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
