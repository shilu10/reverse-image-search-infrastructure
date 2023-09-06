

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
    execute_command = "chmod +x {{ .Path }}; {{ .Vars }} sudo -E sh '{{ .Path }}'"
    inline          = ["apt-get update", 
                      "apt-get upgrade -y", 
                      "apt-get install software-properties-common -y",
                      "apt install python3.9 -y", 
                      "python3 --version",
                      "apt install python3-pip -y",
                      "ln -s /usr/bin/python3 /usr/bin/python",
                      "PATH='$HOME/.local/bin:$PATH'",
                      "export PATH",
                      "pip3 install tensorflow==2.13.* -y",
                      "python3 -c 'import tensorflow as tf; print(tf.reduce_sum(tf.random.normal([1000, 1000])))'",
                      "pip3 install -U prefect supervisor -y",
                      "prefect cloud login -k pnu_oJal2aQeZ2d6GTkHpgTs47Sd7MxHXq0FNNn2",
                      "supervisord -c ./supervisord.conf",
                      "echo '@reboot root supervisord -c $HOME/supervisord.conf -l $HOME supervisord.log -u root' >> /etc/crontab",
                    ]
  }

}


