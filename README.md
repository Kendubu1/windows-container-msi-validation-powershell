# POC - Validating MSI with Powershell & Windows Containers

App Service provides an internally accessible REST endpoint for token retrieval. The REST endpoint can be accessed from within the app with a standard HTTP GET, which can be implemented with a generic HTTP client in every language. For .NET, JavaScript, Java, and Python, the Azure Identity client library provides an abstraction over this REST endpoint and simplifies the development experience. Connecting to other Azure services is as simple as adding a credential object to the service-specific client.

[More Info | App-Service Managed Identity](https://docs.microsoft.com/azure/app-service/overview-managed-identity)

This sample test the functionality with Powershell & Windows Containers.
Using windows/servercore:ltsc2019, this container runs a Powershell script to request the MSI endpoints for token retrieval & returns the output to the App Services docker logs.

> ⚠️ Requires enabling logs & managed Identity before image deployment
> Script will be running as background process on the App Service, no response will be expected when requesting the service URL.  

