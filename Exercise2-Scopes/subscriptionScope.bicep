//Set the target scope to subscription
targetScope = 'subscription'

//Create a resource group
resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'globalazure-rg'
  location: 'westeurope'
}

//Add storage and deploy to the resource group scope
module storage '../Exercise1-Modules/modules/betterStorageModule.bicep' = {
  scope: rg
  name: 'storagedeploy'
  params: {
    accessTier: 'Hot'
    kind: 'StorageV2' 
    location: 'westeurope'
    name: 'myglobalazurestorage'
    sku: 'Premium_LRS'
  }
}
