variable "azure_subscription_id_global" {}

variable "location" {
  default     = "centralus"
  description = "Location of the resource group."
}
variable "env_prefix" {
  default = "labenv2"
}

variable "env_name" {
  type    = string
}

variable "tags" {
  default = {
    "ApplicationName"    = "labs Cloud Services"
    "ApplicationTag"     = "lan=bs Cloud"
    "Capability"         = "Network and Cloud Services"
    "DataClassification" = "Confidential"
    "Environment"        = "UAT"
    "Lifespan"           = "Months"
    "OwnerEmail"         = "jorgezapata010@gmail.com"
    "ProjectInitiative"  = "Default Project"
    "ServiceClass"       = "User Managed"
  }
}
variable "tfstate_rg" {
  default     = "terraform-rg"
  type        = string
  description = "The name of the resource group where the Terraform state file is stored."

}
variable "tfstate_storage_account_name" {
  type        = string
  description = "The name of the storage account where the Terraform state file is stored."
}
variable "tfstate_container_name" {
  type        = string
  description = "The name of the container where the Terraform state file is stored."
}
variable "tfstate_key" {
  type        = string
  description = "The name of the key for the Terraform state file."
}

variable "subscription_id" {
  type        = string
  description = "Azure subscription ID."
}
