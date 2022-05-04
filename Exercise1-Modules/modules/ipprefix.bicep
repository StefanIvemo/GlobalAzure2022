// Public IP Prefix with IPv4 support only

param name string

@allowed([
  'Regional'
  'Global'
])
param tier string = 'Regional'

@allowed([
  28
  29
  30
  31
])
param prefixLength int = 31

@allowed([
  'IPv4'
])
param publicIPAddressVersion string = 'IPv4'
param location string = resourceGroup().location

resource ipPrefix 'Microsoft.Network/publicIPPrefixes@2021-05-01' = {
  name: name
  location: location
  sku: {
    name: 'Standard'
    tier: tier
  }
  properties: {
    prefixLength: prefixLength
    publicIPAddressVersion: publicIPAddressVersion
  }
}
