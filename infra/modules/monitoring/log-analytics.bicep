@description('This template deploys an Azure Log Analytics Workspace.')
param workspaceName string = 'myLogAnalyticsWorkspace'
param location string = resourceGroup().location

resource logAnalytics 'Microsoft.OperationalInsights/workspaces@2020-08-01' = {
  name: workspaceName
  location: location
  properties: {
    sku: {
      name: 'PerGB2018'
    }
    retentionInDays: 30
    features: {
      searchTrafficAnalytics: true
    }
  }
}

output primaryKey string = listKeys(logAnalytics.id, '2020-08-01').primarySharedAccessKey