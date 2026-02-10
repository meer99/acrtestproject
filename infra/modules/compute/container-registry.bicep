// Container Registry Bicep module

@description('The name of the container registry')
param registryName string

@description('The SKU of the container registry')
param sku string = 'Basic'

resource containerRegistry 'Microsoft.ContainerRegistry/registries@2019-05-01' = {
  name: registryName
  location: resourceGroup().location
  sku: {
    name: sku
  }
  properties: {
    adminUserEnabled: true
  }
}