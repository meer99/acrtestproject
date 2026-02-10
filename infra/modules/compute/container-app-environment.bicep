// Container App Environment Bicep module
param envName string = 'myContainerAppEnvironment'
param location string = resourceGroup().location

resource containerAppEnv 'Microsoft.App/environments@2021-03-01' = {
  name: envName
  location: location
  properties: {
    inboundRules: []
    internal: false
  }
}

output containerAppEnvId string = containerAppEnv.id