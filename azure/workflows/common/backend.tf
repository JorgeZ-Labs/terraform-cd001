terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-labs"
    storage_account_name = "tfstatelabactions"
    container_name       = "tfstate"
    key                  = "ftdslab-common-infrastructure.tfstate"
  }
}
 