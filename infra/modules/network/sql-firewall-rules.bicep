@description('SQL Firewall Rules')
param sqlServerName string
param allowedIps array = []

resource sqlFirewallRule 'Microsoft.Sql/servers/firewallRules@2021-02-01-preview' = [for ip in allowedIps: {
  name: '${sqlServerName}-firewallRule-${ip}'
  properties: {
    startIpAddress: ip
    endIpAddress: ip
  }
}]
