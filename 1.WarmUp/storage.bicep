// Parameters
param namePrefix string
param location string

// Variables - build a unique name using string interpolation and uniqueString() function
var storageName = '${take('${namePrefix}${uniqueString(resourceGroup().id, namePrefix)}', 22)}st'

// Resource - A simple storage account
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

// Output
output resourceId string = storage.id
