// Private Endpoint Bicep module
resource privateEndpoint 'Microsoft.Network/privateEndpoints@2021-02-01' = {
  name: 'myPrivateEndpoint'
  location: resourceGroup().location
  properties: {
    subnet: {
      id: subnetId
    }
    privateLinkServiceConnections: [
      {
        name: 'myPrivateLinkServiceConnection'
        properties: {
          privateLinkServiceId: privateLinkServiceId
          groupIds: ['myGroupId']
        }
      }
    ]
  }
}