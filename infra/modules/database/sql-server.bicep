module sqlServer 'Microsoft.Sql/servers@2021-02-01' = {  
  name: 'sqlServerName'  
  location: resourceGroup().location  
  properties: {  
    administratorLogin: 'sqlAdmin'  
    administratorLoginPassword: 'password123!'  
    version: '12.0'  
  }  
}  
