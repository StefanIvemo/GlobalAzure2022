targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'my-rg'
  location: 'westeurope'
}

module storage 'modules/storage.bicep' = {
  scope: rg
  name: 'storagedeploy'
  params: {
    name: 'mystorage'
  }
}
