module "ecs-service" {
  source  = "../../../terraform-aws-ecs-service"

  environment = var.environment

  projectName = var.projectName
  clusterName = var.clusterName
  serviceName = var.serviceName
  revision = var.revision
  
  healthPath = "/actuator/health"
  
  exposedPaths = [
     {
	   servicePath = "/"
	 }
  ]
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