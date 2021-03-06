@allowed([
  'prod'
  'dev'
  'qa'
])
param env string = 'prod'
param importantWorkload bool = true

resource storage 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: 'globalazuresthlmst'
  location: 'westeurope'
  sku: {
    name: env == 'prod' ? 'Premium_LRS' : 'Standard_LRS'
  }
  kind: 'StorageV2'
}
