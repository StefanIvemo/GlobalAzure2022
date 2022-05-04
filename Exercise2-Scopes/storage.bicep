
resource storage 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: 'globalazuresthlmst'
  location: 'westeurope'
  sku: {
    name: 'Premium_LRS'
  }
  kind: 'StorageV2'
}
