targetScope = 'managementGroup'

resource parentManagementGroup 'Microsoft.Management/managementGroups@2020-05-01' = {
  scope: tenant()
  name: 'GlobalAzure'
  properties: {
    displayName: 'Global Azure'
  }
}

resource childManagementGroup 'Microsoft.Management/managementGroups@2020-05-01' = {
  scope: tenant()
  name: 'GlobalAzureStockholm'
  properties: {
    displayName: 'Global Azure Stockholm'
    details: {
      parent: {
        id: parentManagementGroup.id
      }
    }
  }
}
