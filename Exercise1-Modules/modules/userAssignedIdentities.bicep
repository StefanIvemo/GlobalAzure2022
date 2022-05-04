param name string
param tags object = {}
param location string = resourceGroup().id

resource identity 'Microsoft.ManagedIdentity/userAssignedIdentities@2018-11-30' = {
  name: name
  location: location
  tags: tags
}

output resourceId string = identity.id
output principalID string = identity.properties.principalId
output tenantID string = identity.properties.tenantId
output clientID string = identity.properties.clientId
