param principalId string = ''
param roleDefinitionId string = 'b24988ac-6180-42a0-ab88-20f7382dd24c' //contributor id

resource roleassing 'Microsoft.Authorization/roleAssignments@2020-10-01-preview' = {
  name: guid(resourceGroup().id, roleDefinitionId)
  properties: {
    principalId: principalId
    roleDefinitionId: roleDefinitionId
  }
}
