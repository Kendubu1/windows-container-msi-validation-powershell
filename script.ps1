Write-Output "[$(Get-Date)] #### START ###"

Write-Output "[$(Get-Date)] Calling the MSI endpoint"
$env:MSI_ENDPOINT
$resourceURI = "https://vault.azure.net"
$tokenAuthURI = $env:MSI_ENDPOINT + "?resource=$resourceURI&api-version=2019-08-01"
$tokenResponse = Invoke-RestMethod -Method Get -Headers @{"X-IDENTITY-HEADER"="$env:MSI_SECRET"} -Uri $tokenAuthURI
$accessToken = $tokenResponse.access_token
Write-Output "[$(Get-Date)] Returning MSI endpoint response"
Write-Output $tokenResponse
#Write-Output "[$(Get-Date)] Returning the MSI token"
#Write-Output $accessToken

Write-Output "[$(Get-Date)] ###################"

Write-Output "[$(Get-Date)] Calling the Identity endpoint"
$resourceURI2 = "https://vault.azure.net"
$tokenAuthURI2 = $env:IDENTITY_ENDPOINT + "?resource=$resourceURI2&api-version=2019-08-01"
$tokenResponse2 = Invoke-RestMethod -Method Get -Headers @{"X-IDENTITY-HEADER"="$env:IDENTITY_HEADER"} -Uri $tokenAuthURI2
$accessToken2 = $tokenResponse2.access_token
$env:IDENTITY_ENDPOINT 
Write-Output "[$(Get-Date)] Returning the Identity endpoint response"
Write-Output $tokenResponse2
#Write-Output "[$(Get-Date)] Returning the Identity token"
#Write-Output $accessToken2

Write-Output "[$(Get-Date)] ###################"


Write-Output "[$(Get-Date)] Printing the MSI Secret"
$env:MSI_SECRET  

Write-Output "[$(Get-Date)] Printing the Identity header"
$env:IDENTITY_HEADER   

Write-Output "[$(Get-Date)] #### END ###"
