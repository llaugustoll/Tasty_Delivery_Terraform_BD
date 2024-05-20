variable "projectNameOrder" {
  default = "tasty-delivery-order"
}

variable "dbNameOrder" {
  default = "tastyDeliveryOrder"
}

variable "regionDefaultOrder" {
  default = "us-east-1" # example: us-east-1
}

variable "engineRdsOrder" {
  default = "postgres"
}

variable "engineRdsVersionOrder" {
  default = "14.12"
}

variable "rdsUserOrder" {
  description = "Inserir usuario do banco em secrets"
  default = "postgres"
}

variable "rdsPassOrder" {
  description = "Inserir senha do banco em secrets"
  default = "password"
}

# variable "clusterNameOrder" {
#   default     = "SonarQube"
# }

variable "instanceClassOrder" {
  default = "db.t3.micro"
}

variable "storageTypeOrder" {
  default = "gp3"
}

variable "minStorageOrder" {
  default = "20"
}

variable "maxStorageOrder" {
  default = "30"
}

# variable "subnet01Order" {
#   default = "subnet-01cc59f4090502e40" # example: subnet-abcdef1
# }

# variable "subnet02Order" {
#   default = "subnet-0b900cd17b500f229" # example: subnet-abcdef1
# }

# variable "subnet03Order" {
#   default = "subnet-0e9e61355322da1f0" # example: subnet-abcdef1
# }

# variable "vpcIdOrder" {
#   default = "vpc-038f74f3c650d83da" # example: vpc-abcdef1
# }

# variable "vpcCIDROrder" {
#   default = "172.31.0.0/16" # example: 10.10.0.0/16
# }

#  variable "AWSAccountOrder" {
#    default     = "<inserir-id-aws-account>" # example: 123456789
#  }

 variable "tagsOrder" {
   type        = map(string)
   default = {
     App          = "tastyDelivery",
     Ambiente     = "Desenvolvimento"
    }
}
