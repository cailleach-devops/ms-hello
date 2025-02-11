module "ecs-service" {
  source  = "app.terraform.io/CailleachOrg/ecs-service/aws"
  version = "1.1.15"

  environment = var.environment

  projectName = var.projectName
  serviceName = var.serviceName
  revision = var.revision
  
  healthPath = "/"
  
  exposedPaths = [ { servicePath = "/" } ]
}


/*
module "database-schema" {
  source  = "../../../terraform-aws-rds-schema"

  environment = var.environment

  # ===== DOESN'T change above this line =====
  
  databaseName = var.projectName
  schemaName = var.serviceName
  username = var.serviceName 
}
*/
