module "ecs-cluster" {
  source  = "app.terraform.io/CailleachInfo/ecs-cluster/aws"
  version = "1.0.2"

  role = var.role
  environment = var.environment
  country = var.country

  # ===== DOESN'T change above this line =====

  clusterName = var.clusterName
}

module "ecs-service" {
  source  = "app.terraform.io/CailleachInfo/ecs-service/aws"
  version = "1.1.5"

  depends_on = [ module.ecs-cluster ]

  role = var.role
  environment = var.environment
  country = var.country

  clusterName = var.clusterName
  serviceName = var.serviceName
  revision = var.revision
}
