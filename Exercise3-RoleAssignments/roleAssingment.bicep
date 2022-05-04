param principalId string = '3d8b83da-d397-4e6f-968a-3b61b2645581'
param roleDefinitionId string = '/subscriptions/30247484-29d4-4b25-b07a-4357febd372e/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c' //contributor id

// Assign the role to the deployment scope
resource roleAssignment 'Microsoft.Authorization/roleAssignments@2020-04-01-preview' = {
  // Generate a guid for the role assignment name
  name: guid(subscription().id, roleDefinitionId)
  properties: {
    principalId: principalId
    roleDefinitionId: roleDefinitionId
  }
}
