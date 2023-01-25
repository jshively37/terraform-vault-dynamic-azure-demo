variable "azure_role" {
  type        = string
  description = "Name of the role in Azure"
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant id"
}

variable "subscription_id" {
  type        = string
  description = "Azure subscription id"
}

variable "vault_address" {
  description = "The address/DNS of the Vault server"
  default     = "http://127.0.0.1:8200"
}

variable "vault_backend" {
  type        = string
  description = "Name of the Vault secret store"
}

variable "vault_token" {
  type        = string
  description = "Vault token for authentication"
  default     = "root"
}
