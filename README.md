# reverse-image-search-infrastructure

### creating resource group and service principle using azure cli 
    - az group create MyResourceGroupName -l centralindia 
    - az ad sp create-for-rbac --role Contributor --scopes /subscriptions/<subscription_id> --query "{ client_id: appId, client_secret: password, tenant_id: tenant }"

    output:
    {
    "client_id": "f5b6a5cf-fbdf-4a9f-b3b8-3c2cd00225a4",
    "client_secret": "0e760437-bf34-4aad-9f8d-870be799c55d",
    "tenant_id": "72f988bf-86f1-41af-91ab-2d7cd011db47"
    }

### creating the shared image gallery:
	az sig create --resource-group myGalleryRG --gallery-name myGallery
	az sig image-definition create \
     --resource-group myGalleryRG \
     --gallery-name myGallery \
     --gallery-image-definition myImageDefinition \
     --publisher myPublisher \
     --offer myOffer \
     --sku mySKU \
     --os-type Linux \
     --os-state specialized

### creating ssh keys for both vm:
    az sshkey create --name "mySSHKey" --resource-group "myResourceGroup"

### for github action aazure login
    az ad sp create-for-rbac --name "reverse_image_search" --role contributor \
>                                 --scopes /subscriptions/c9e7cee3-35fd-4fa3-a5b7-ab7e199b7480/resourceGroups/reverse_image_search \
>                                 --json-auth
    {
    "clientId": "a06e4614-2223-48c7-bea7-2778ae31d174",
    "clientSecret": "0bC8Q~nzZShY_-xwbXC-_Mci~HcjQfQnUWAgCbES",
    "subscriptionId": "c9e7cee3-35fd-4fa3-a5b7-ab7e199b7480",
    "tenantId": "e86747fe-787a-455b-b75b-c7c1f373967b",
    "activeDirectoryEndpointUrl": "https://login.microsoftonline.com",
    "resourceManagerEndpointUrl": "https://management.azure.com/",
    "activeDirectoryGraphResourceId": "https://graph.windows.net/",
    "sqlManagementEndpointUrl": "https://management.core.windows.net:8443/",
    "galleryEndpointUrl": "https://gallery.azure.com/",
    "managementEndpointUrl": "https://management.core.windows.net/"
  }


