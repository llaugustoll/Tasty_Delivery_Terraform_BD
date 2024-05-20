variable "projectNameProduct" {
  default = "tasty-delivery-product"
}

variable "dbNameProduct" {
  default = "tastyDeliveryProduct"
}

variable "regionDefaultProduct" {
  default = "us-east-1" # example: us-east-1
}

variable "engineRdsProduct" {
  default = "postgres"
}

variable "engineRdsVersionProduct" {
  default = "14.12"
}

variable "rdsUserProduct" {
  description = "Inserir usuario do banco em secrets"
  default = "postgres"
}

variable "rdsPassProduct" {
  description = "Inserir senha do banco em secrets"
  default = "password"
}

# variable "clusterNameProduct" {
#   default     = "SonarQube"
# }

variable "instanceClassProduct" {
  default = "db.t3.micro"
}

variable "storageTypeProduct" {
  default = "gp3"
}

variable "minStorageProduct" {
  default = "20"
}

variable "maxStorageProduct" {
  default = "30"
}

# variable "subnet01Product" {
#   default = "subnet-01cc59f4090502e40" # example: subnet-abcdef1
# }

# variable "subnet02Product" {
#   default = "subnet-0b900cd17b500f229" # example: subnet-abcdef1
# }

# variable "subnet03Product" {
#   default = "subnet-0e9e61355322da1f0" # example: subnet-abcdef1
# }

# variable "vpcIdProduct" {
#   default = "vpc-038f74f3c650d83da" # example: vpc-abcdef1
# }

# variable "vpcCIDRProduct" {
#   default = "172.31.0.0/16" # example: 10.10.0.0/16
# }

#  variable "AWSAccountProduct" {
#    default     = "<inserir-id-aws-account>" # example: 123456789
#  }

 variable "tagsProduct" {
   type        = map(string)
   default = {
     App          = "tastyDelivery",
     Ambiente     = "Desenvolvimento"
    }
}
