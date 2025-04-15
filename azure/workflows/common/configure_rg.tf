module "resource_group_k8s" {
  source   = "../../modules/resource-group"
  rg_name  = local.rg_general
  location = var.location
  tags     = var.tags
}