

module storage 'modules/betterStorageModule.bicep' = {
  name: 'storageDeploy'
  params: {
    accessTier: 'Cool'
    kind: 'StorageV2'
    location: 'westeurope'
    name: 'steffesstorage'
    sku: 'Premium_LRS'
  }
}
