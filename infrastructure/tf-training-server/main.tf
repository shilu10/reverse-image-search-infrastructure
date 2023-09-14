# from server module in environment_module directory.

module "tf_training_server" {
  source = "../../environment_modules/linux-server/"
  username = var.username
  hostname = var.hostname
  vm_type = var.vm_type
  network_nic_name = var.network_nic_name
  prefix = var.prefix
  virtual_network_name = var.virtual_network_name
  address_space = var.address_space
  subnet_name = var.subnet_name
  address_prefixes = var.address_prefixes
  public_ip_name = var.public_ip_name
  public_ip_allocation_method = var.public_ip_allocation_method
  nsg_name = var.nsg_name
  vm_name = var.vm_name
  resource_group_location = var.resource_group_location
  public_key = var.public_key
  resource_group_name = var.resource_group_name
  custom_image_name = var.custom_image_name
}