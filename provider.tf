terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "3.11.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.40.0"
    }
  }
}

provider "azurerm" {
  client_id       = data.vault_azure_access_credentials.creds.client_id
  client_secret   = data.vault_azure_access_credentials.creds.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
  features {}
}

provider "vault" {
  address = var.vault_address
  token   = var.vault_token
}
