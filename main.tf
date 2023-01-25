data "vault_azure_access_credentials" "creds" {
  backend                     = var.vault_backend
  role                        = var.azure_role
  validate_creds              = true
  num_sequential_successes    = 8
  num_seconds_between_tests   = 1
  max_cred_validation_seconds = 300
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "centralus"
}

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  address_space       = ["10.0.0.0/16"]
}
