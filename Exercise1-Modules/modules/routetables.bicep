param name string
param routes array = []
param disableBgpRoutePropagation bool = false
param tags object = {}
param location string = resourceGroup().location

resource route 'Microsoft.Network/routeTables@2021-05-01' = {
    name: name
    location: location
    tags: tags
    properties: {
        routes: routes
        disableBgpRoutePropagation: disableBgpRoutePropagation
    }
}

output resourceId string = route.id
