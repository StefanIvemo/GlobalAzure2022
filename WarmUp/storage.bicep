param namePrefix string
param location string

var storageName = '${take('${namePrefix}${uniqueString(resourceGroup().id, namePrefix)}', 22)}st'

resource storage 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: storageName
  location: location
  sku: {
    name: 'Premium_LRS'
  }
  kind: 'StorageV2'
  properties: {
    minimumTlsVersion: 'TLS1_2'
  }
}

output resourceId string = storage.id
