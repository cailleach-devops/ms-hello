module "ecs-service" {
  source  = "app.terraform.io/CailleachOrg/ecs-service/aws"
  version = "1.1.6"

  environment = var.environment

  projectName = var.projectName
  clusterName = var.clusterName
  serviceName = var.serviceName
  revision = var.revision
  
  healthPath = "/actuator/health"
  
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