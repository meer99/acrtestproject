// Private DNS Zone Bicep module
module privateDnsZone 'br:example/privateDnsZone.bicep' = {
  name: 'examplePrivateDnsZone'
  params: {
    zoneName: 'example.com'
    resourceGroupName: 'exampleResourceGroup'
  }
}