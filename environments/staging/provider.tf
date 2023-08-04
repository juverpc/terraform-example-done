##Aquí se define el proveedor de infraestructura que utilizarás, por ejemplo, AWS, Azure o Google Cloud Platform

# Configuración del proveedor de AWS
provider "aws" {
  region = "us-east-1"  # Cambia esto a la región de tu preferencia
  default_tags {
    tags = {
      Environment = "staging"
      Owner       = "Ops"
    }
  }
}

