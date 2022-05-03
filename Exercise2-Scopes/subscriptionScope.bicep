
targetScope = 'subscription'

//Create a resource group
resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'globalazure-rg'
  location: 'westeurope'
}

//Add storage and deploy to the resource group scope
