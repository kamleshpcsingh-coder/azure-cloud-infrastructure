data "azurerm_storage_account" "sa" {
  for_each = var.cnt
  name                = each.value.storage_account_name
  resource_group_name = each.value.resource_group_name
}