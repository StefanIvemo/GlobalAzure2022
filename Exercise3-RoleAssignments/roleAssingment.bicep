param principalId string = ''
param roleDefinitionId string = 'b24988ac-6180-42a0-ab88-20f7382dd24c' //contributor id

resource roleAssignment 'Microsoft.Authorization/roleAssignments@2020-10-01-preview' = {
  // Generate a guid for the role assignment name
  name: guid(resourceGroup().id, roleDefinitionId)
  properties: {
    principalId: principalId
    roleDefinitionId: roleDefinitionId
  }
}
