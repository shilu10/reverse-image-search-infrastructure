packer {
  required_plugins {
    azure = {
      source  = "github.com/hashicorp/azure"
      version = "~> 1"
    }
    ansible = {
      source  = "github.com/hashicorp/ansible"
      version = "~> 1"
    }
  }
}


source "azure-arm" "training_server" {
  azure_tags = {
    type = "training_server"
    task = "Image deployment"
  }

  client_id                         = var.az_client_id
  client_secret                     = var.az_client_secret
  image_offer                       = "0001-com-ubuntu-server-focal"
  image_publisher                   = "canonical"
  image_sku                         = "20_04-lts"
  location                          = var.location
  managed_image_name                = var.packer_image_name
  managed_image_resource_group_name = var.az_resource_group
  os_type                           = "Linux"
  subscription_id                   = var.az_subscription_id
  tenant_id                         = var.az_tenant_id
  vm_size                           = var.vm_size
}

build {
  sources = ["source.azure-arm.training_server"]
  
  provisioner "file" {
    source = "supervisord.conf"
    destination = "supervisord.conf"
  }

  provisioner "shell" {
    inline_shebang = "/bin/bash -e"
    inline = ["sudo su",
          "sleep 30", 
          "sudo apt-get update -y", 
           "sudo apt-get upgrade -y", 
           "sudo apt install python3-pip -y", 
           "echo done installing packages1",
           "sudo apt install docker.io",
           "sudo pip3 install flask",
           "echo done installing packages"]
  }

}
