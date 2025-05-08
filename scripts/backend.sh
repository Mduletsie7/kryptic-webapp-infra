RESOURCE_GROUP_NAME="terraform-backend-rg"
STORAGE_ACCOUNT_NAME="mdumisiorgtfstate01"
CONTAINER_NAME="tfstate"

# Create Resource Group
az group create --name $RESOURCE_GROUP_NAME --location eastus

# Create Storage Account
az storage account create --name $STORAGE_ACCOUNT_NAME \
  --resource-group $RESOURCE_GROUP_NAME \
  --sku Standard_LRS \
  --encryption-services blob

# Get Storage Account Key
ACCOUNT_KEY=$(az storage account keys list --resource-group $RESOURCE_GROUP_NAME \
  --account-name $STORAGE_ACCOUNT_NAME --query '[0].value' --output tsv)

# Create Blob Container
az storage container create --name $CONTAINER_NAME \
  --account-name $STORAGE_ACCOUNT_NAME \
  --account-key $ACCOUNT_KEY
