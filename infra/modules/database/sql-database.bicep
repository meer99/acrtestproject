// SQL Database Bicep module
resource sqlDb 'Microsoft.Sql/servers/databases@2020-02-02' = {  
  name: 'myDatabase'  
  location: resourceGroup().location  
  resourceGroup: sqlServerResourceGroup.name  
  properties: {  
    edition: 'Basic'  
    requestedServiceObjective: 'Basic'  
  }  
}