param name string
param sku string
param adminUserEnabled bool = false
param tags object = {}
param location string = resourceGroup().location

resource acr 'Microsoft.ContainerRegistry/registries@2019-05-01' = {
  name: name
  location: location
  sku: {
    name: sku
  }
  tags: tags
  properties: {
    adminUserEnabled: adminUserEnabled
  }
}

output resourceId string = acr.id
