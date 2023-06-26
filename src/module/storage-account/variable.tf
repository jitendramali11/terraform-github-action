variable "resource_group_location" {
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  //default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}
variable "storage_account" {
  default = "demoterraformstr"
  description = "storage accoount creation"
}

variable "keyvaultname" {
  default = "demoterraformkv"
  description = "keyvault description"
}

variable username {
 default = "Jitendra"
 description = "The useer name"
}

output printname {
  value = var.username
}
