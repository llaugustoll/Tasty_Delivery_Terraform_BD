# Banco do serviço Principal
resource "aws_db_instance" "rds" {
  db_name        = "${var.dbName}"
  engine         = var.engineRds
  engine_version = var.engineRdsVersion
  identifier     = "rds-${var.projectName}"
  # manage_master_user_password  = true 
  username                     = var.rdsUser
  password                     = var.rdsPass
  instance_class               = var.instanceClass
  storage_type                 = var.storageType
  allocated_storage            = var.minStorage
  max_allocated_storage        = var.maxStorage
  multi_az                     = false
  vpc_security_group_ids       = ["${aws_security_group.sg-rds.id}"]
  db_subnet_group_name         = aws_db_subnet_group.subnet-rds.id
  apply_immediately            = true
  skip_final_snapshot          = true
  publicly_accessible          = false
  deletion_protection          = false
  performance_insights_enabled = true
  backup_retention_period      = 1
  backup_window                = "00:00-00:30"
  copy_tags_to_snapshot        = true
  delete_automated_backups     = true
}
# Banco do serviço de produtos e category
resource "aws_db_instance" "rdsProduct" {
  db_name        = "${var.dbNameProduct}"
  engine         = var.engineRdsProduct
  engine_version = var.engineRdsVersionProduct
  identifier     = "rds-${var.projectNameProduct}"
  # manage_master_user_password  = true 
  username                     = var.rdsUserProduct
  password                     = var.rdsPassProduct
  instance_class               = var.instanceClassProduct
  storage_type                 = var.storageTypeProduct
  allocated_storage            = var.minStorageProduct
  max_allocated_storage        = var.maxStorageProduct
  multi_az                     = false
  vpc_security_group_ids       = ["${aws_security_group.sg-rds.id}"]
  db_subnet_group_name         = aws_db_subnet_group.subnet-rds.id
  apply_immediately            = true
  skip_final_snapshot          = true
  publicly_accessible          = false
  deletion_protection          = false
  performance_insights_enabled = true
  backup_retention_period      = 1
  backup_window                = "00:00-00:30"
  copy_tags_to_snapshot        = true
  delete_automated_backups     = true
}
# Banco do serviço de order
resource "aws_db_instance" "rdsOrder" {
  db_name        = "${var.dbNameOrder}"
  engine         = var.engineRdsOrder
  engine_version = var.engineRdsVersionOrder
  identifier     = "rds-${var.projectNameOrder}"
  # manage_master_user_password  = true 
  username                     = var.rdsUserOrder
  password                     = var.rdsPassOrder
  instance_class               = var.instanceClassOrder
  storage_type                 = var.storageTypeOrder
  allocated_storage            = var.minStorageOrder
  max_allocated_storage        = var.maxStorageOrder
  multi_az                     = false
  vpc_security_group_ids       = ["${aws_security_group.sg-rds.id}"]
  db_subnet_group_name         = aws_db_subnet_group.subnet-rds.id
  apply_immediately            = true
  skip_final_snapshot          = true
  publicly_accessible          = false
  deletion_protection          = false
  performance_insights_enabled = true
  backup_retention_period      = 1
  backup_window                = "00:00-00:30"
  copy_tags_to_snapshot        = true
  delete_automated_backups     = true
}

# Caso queira que o AWS Secrets gerencie a senha master, descomente a linha 6 e comente a linha 8, nesse caso ele vai gerar uma e salvar lá.