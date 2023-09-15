username = "azureuser"
hostname = "tftrainingserver"
vm_type = "Standard_B1s"
network_nic_name = "tf_training_server_nic_v1"
prefix = "tf-training-server"
virtual_network_name = "ris_tf_training_v1"
address_space = ["10.0.0.0/16"]
subnet_name = "ris_tf_training_v1"
address_prefixes = ["10.0.1.0/24"] 
public_ip_name = "ris_tf_training_v1"
public_ip_allocation_method = "Dynamic"
nsg_name = "ris_tf_training_v1"
vm_name = "tftrainingserverv1"
resource_group_location = "centralindia"
custom_image_name = "reverse_image_search_api_server_v1"
resource_group_name = "reverse_image_search"
os_disk_name = "tftrainingserverosdisk"
reverse_image_search_tf_training_server_v1