# Azure Container Registry Test Project

This project contains modular Bicep Infrastructure as Code templates for deploying and managing Azure resources in australiaeast region.

## Project Overview

Deploy containerized applications with Azure Container Registry (ACR), SQL databases, managed identities, networking, and monitoring infrastructure.

## Directory Structure

```
infra/
├── modules/
│   ├── compute/
│   │   ├── container-registry.bicep
│   │   ├── container-app-environment.bicep
│   │   └── container-app-job.bicep
│   ├── database/
│   │   ├── sql-server.bicep
│   │   └── sql-database.bicep
│   ├── network/
│   │   ├── private-endpoint.bicep
│   │   ├── private-dns-zone.bicep
│   │   ├── nsg.bicep
│   │   └── sql-firewall-rules.bicep
│   ├── security/
│   │   └── managed-identity.bicep
│   └── monitoring/
│       └── log-analytics.bicep
├── main.bicep
├── parameters/
│   └── test.bicepparam
├── deploy.sh
└── deploy.ps1
```

## Prerequisites

- Azure CLI (latest version)
- Bicep CLI (included with Azure CLI 2.20.0+)
- Azure subscription with appropriate permissions
- Bash or PowerShell terminal

## Deployment Instructions

### Using Bash

```bash
chmod +x infra/deploy.sh
./infra/deploy.sh myResourceGroup australiaeast
```

### Configuration

Edit `infra/parameters/test.bicepparam` to customize deployment parameters:

```bicep
param location = 'australiaeast'
param appName = 'acrtestapp'
```

## Module Details

### Compute Modules
- **container-registry.bicep**: Azure Container Registry with Standard SKU
- **container-app-environment.bicep**: Container App Environment configuration
- **container-app-job.bicep**: Scheduled Container Jobs

### Database Modules
- **sql-server.bicep**: Azure SQL Server with managed identity
- **sql-database.bicep**: SQL Database configuration

### Network Modules
- **nsg.bicep**: Network Security Group
- **private-endpoint.bicep**: Private Endpoint for service connectivity
- **private-dns-zone.bicep**: Private DNS Zone configuration
- **sql-firewall-rules.bicep**: SQL Server firewall rules

### Security Modules
- **managed-identity.bicep**: User-assigned managed identity

### Monitoring Modules
- **log-analytics.bicep**: Log Analytics Workspace

## Cleanup

To remove all deployed resources:

```bash
az group delete --name myResourceGroup --yes --no-wait
```

## Support

For more information, refer to Azure documentation.