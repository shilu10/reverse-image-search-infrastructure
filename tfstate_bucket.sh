#!/bin/bash

while getopts r:s:c:l: flag
do
    case "${flag}" in
        r) resource_group_name=${OPTARG};;
        s) storage_account_name=${OPTARG};;
        c) container_name=${OPTARG};;
		l) location=${OPTARG};;
    esac

done 
# Create resource group
az group create --name $resource_group_name --location $location

# Create storage account
az storage account create --resource-group $resource_group_name --name $storage_account_name --sku Standard_LRS --encryption-services blob

# Create blob container
az storage container create --name $container_name --account-name $storage_account_name

ACCOUNT_KEY=$(az storage account keys list --resource-group $resource_group_name --account-name $storage_account_name --query '[0].value' -o tsv)

echo "$ACCOUNT_KEY"