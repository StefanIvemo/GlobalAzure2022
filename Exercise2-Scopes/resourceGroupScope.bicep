



resource kv 'Microsoft.KeyVault/vaults@2021-11-01-preview' existing = {
  name: 'globalazuresthlm-kv'
  scope: resourceGroup('globalazure-secrets-rg') 
}

module sqlServer 'modules/sqlServer.bicep' = {
  name: 'SqlDeploy'
  params: {
    administratorLogin: 'sysadmin' 
    administratorLoginPassword: kv.getSecret('sqlAdminPassword')
    location: 'westeurope'
    name: 'globalazure-sql'
  }
}
