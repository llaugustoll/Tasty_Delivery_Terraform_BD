variable "projectName" {
  default = "tasty-delivery"
}

variable "dbName" {
  default = "tastydelivery"
}

variable "regionDefault" {
  default = "us-east-1" # example: us-east-1
}

variable "engineRds" {
  default = "postgres"
}

variable "engineRdsVersion" {
  default = "13.10"
}

variable "rdsUser" {
  description = "Inserir usuario do banco em secrets"
}

variable "rdsPass" {
  description = "Inserir senha do banco em secrets"
}

# variable "clusterName" {
#   default     = "SonarQube"
# }

variable "instanceClass" {
  default = "db.t3.micro"
}

variable "storageType" {
  default = "gp3"
}

variable "minStorage" {
  default = "20"
}

variable "maxStorage" {
  default = "30"
}

variable "subnet01" {
  default = "subnet-01771c8a796deee60" # example: subnet-abcdef1
}

variable "subnet02" {
  default = "subnet-0a84162e75c5b1801" # example: subnet-abcdef1
}

variable "subnet03" {
  default = "subnet-034d0886b631d76d5" # example: subnet-abcdef1
}

variable "vpcId" {
  default = "vpc-003540c96e217dcd1" # example: vpc-abcdef1
}

variable "vpcCIDR" {
  default = "172.31.0.0/16" # example: 10.10.0.0/16
}

#  variable "AWSAccount" {
#    default     = "<inserir-id-aws-account>" # example: 123456789
#  }

 variable "tags" {
   type        = map(string)
   default = {
     App          = "tastyDelivery",
     Ambiente     = "Desenvolvimento"
    }
}
