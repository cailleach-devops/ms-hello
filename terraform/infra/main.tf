module "ecs-service" {
  source  = "app.terraform.io/CailleachOrg/ecs-service/aws"
  version = "1.1.5"

  role = var.role
  environment = var.environment

  exposure {
    public = yes
    create_gateway = yes
    gateway_name = "my-own-api-gateway"
    public_root_path= /customer
    internal_root_path= /customer
  }

  clusterName = var.clusterName
  serviceName = var.serviceName
  revision = var.revision
}
