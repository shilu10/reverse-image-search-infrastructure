output "resource_group_id" {
  value = data.azurerm_resource_group.rg.id
}

output "public_ip_address" {
  value = azurerm_linux_virtual_machine.my_terraform_vm.public_ip_address
}

