
targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'globalazure-rg'
  location: 'westeurope'
}
