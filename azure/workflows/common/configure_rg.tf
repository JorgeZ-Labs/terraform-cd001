module "resource_group_k8s" {
  source   = "../../modules/resource-group"
  rg_name  = local.rg_general
  location = var.location
  tags     = var.tags
}

module "resource_group_test" {
  source   = "../../modules/resource-group"
  rg_name  = local.rg_test
  location = var.location
  tags     = var.tags
}