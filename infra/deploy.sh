#!/bin/bash

# Azure Bicep Deployment Script
# Usage: ./deploy.sh <resource-group> [location]

RESOURCE_GROUP=${1:-myResourceGroup}
LOCATION=${2:-australiaeast}
TEMPLATE_FILE="./infra/main.bicep"
PARAMETERS_FILE="./infra/parameters/test.bicepparam"

echo "=========================================="
echo "Azure Bicep Deployment Script"
echo "=========================================="
echo "Resource Group: $RESOURCE_GROUP"
echo "Location: $LOCATION"
echo ""
echo "Creating resource group: $RESOURCE_GROUP..."
az group create --name "$RESOURCE_GROUP" --location "$LOCATION"
echo ""
echo "Deploying Bicep template..."
az deployment group create \
  --resource-group "$RESOURCE_GROUP" \
  --template-file "$TEMPLATE_FILE" \
  --parameters "$PARAMETERS_FILE" \
  --parameters location=$LOCATION
echo ""
echo "=========================================="
echo "Deployment completed successfully!"
echo "=========================================="