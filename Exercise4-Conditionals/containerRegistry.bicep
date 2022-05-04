@allowed([
  'Basic'
  'Standard'
  'Premium'
])
param sku string = 'Standard'
param allowedIP string

var networkRuleSet = {
  defaultAction: 'Deny'
  ipRules: [
    {
      action: 'Allow'
      value: allowedIP
    }
  ]
}

resource acr 'Microsoft.ContainerRegistry/registries@2021-12-01-preview' = {
  name: 'globalazureacr'
  location: 'westeurope'
  sku: {
    name: sku
  }
  properties: {
    
  }
}
