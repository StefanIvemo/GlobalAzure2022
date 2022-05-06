
param principalId string = '3d8b83da-d397-4e6f-968a-3b61b2645581'
@allowed([
  'owner'
  'reader'
  'cotributor'
])
param role string

var rolelist = json(loadTextContent('roles.json'))
var roledefintionid = rolelist[role]

resource roledef 'Microsoft.Authorization/roleDefinitions@2018-01-01-preview'existing = {
  name: roledefintionid
  scope: subscription()
}

// Assign the role to the deployment scope
resource roleAssignment 'Microsoft.Authorization/roleAssignments@2020-04-01-preview' = {
  // Generate a guid for the role assignment name
  name: guid(subscription().id, role)
  properties: {
    principalId: principalId
    roleDefinitionId: roledef.id
  }
}
