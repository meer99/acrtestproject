// Bicep orchestration script for managing resources

// Define the parameters required for the deployment
param location string = resourceGroup().location
param appName string

// Define the resource group
resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = [
  { name: '${appName}-rg'; location: location }
]

// Define additional resources needed, e.g., storage account
resource storage 'Microsoft.Storage/storageAccounts@2021-04-01' = [
  { name: '${appName}storage'; location: location; sku: { name: 'Standard_LRS' }; kind: 'StorageV2' }
]

// Output the storage account name
output storageAccountName string = storage.name