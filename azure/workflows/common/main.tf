#data "azurerm_kubernetes_cluster" "aks" {
# name                = local.aks_name
#resource_group_name = local.rg_k8s
#}

locals {
  rg_general = "lab-${var.env_prefix}-${var.env_name}-rg-general"
  rg_test    = "test-${var.env_prefix}-${var.env_name}-rg-general-test"
  asb_name   = "${var.env_prefix}-${var.env_name}-asb"
}