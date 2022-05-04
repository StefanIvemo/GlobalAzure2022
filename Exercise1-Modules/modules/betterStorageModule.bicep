@description('Name of the storage account')
param name string

@allowed([
  'Standard_LRS'
  'Standard_GRS'
  'Standard_RAGRS'
  'Standard_ZRS'
  'Premium_LRS'
  'Premium_ZRS'
  'Standard_GZRS'
  'Standard_RAGZRS'
])
@description('The SKU name. Required for account creation; optional for update. Note that in older versions, SKU name was called accountType.')
param sku string

@allowed([
  'Storage'
  'StorageV2'
  'BlobStorage'
  'FileStorage'
  'BlockBlobStorage'
])
@description('Indicates the type of storage account.')
param kind string

@allowed([
  'Hot'
  'Cool'
])
@description('Required for storage accounts where kind = BlobStorage. The access tier used for billing.')
param accessTier string

param location string

resource storage 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: name
  location: location
  sku: {
    name: sku
  }
  kind: kind
  properties: {
    accessTier: accessTier
    supportsHttpsTrafficOnly: true
    minimumTlsVersion: 'TLS1_2'
  }
}

output resourceId string = storage.id
