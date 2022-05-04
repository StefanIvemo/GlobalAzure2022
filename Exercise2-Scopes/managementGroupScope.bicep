// Set target scope to managementGroup
targetScope = 'managementGroup'

resource policyAssignment 'Microsoft.Authorization/policyAssignments@2021-06-01' = {
  name: 'Function-Https-Only'
  properties: {
    displayName: 'Function App should only be accessible over HTTPS'
    nonComplianceMessages: [
      {
        message: 'Hey! Hey! What are you up to?'
      }
    ]
    policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/6d555dd1-86f2-4f1c-8ed7-5abae7c6cbab'
  }
}
