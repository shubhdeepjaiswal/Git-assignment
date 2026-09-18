output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "virtual_network_name" {
  value = azurerm_virtual_network.vnet.name
}

output "subnet_name" {
  value = azurerm_subnet.subnet.name
}

output "vm_names" {
  value = [
    for vm in azurerm_linux_virtual_machine.vm : vm.name
  ]
}

output "vm_private_ips" {
  value = {
    for key, nic in azurerm_network_interface.nic :
    key => nic.private_ip_address
  }
}

