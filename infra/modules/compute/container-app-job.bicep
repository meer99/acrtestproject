@description('Container App Job definition configuration')
param jobName string = 'myJob'
param containerImage string = 'myContainerImage'

resource containerAppJob 'Microsoft.App/jobs@2022-11-01' = {
  name: jobName
  location: resourceGroup().location
  properties: {
    image: containerImage
    jobType: 'Scheduled'
    schedule: {
      frequency: 'PT24H'
    }
  }
}