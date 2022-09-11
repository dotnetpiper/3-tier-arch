###AzureCLI to pull details of NetworkIP

$IP="20.29"
az network public-ip list --query "[?ipAddress!=null]|[?contains(ipAddress, '$IP')].[id]" --output tsv

###resourceGraphQuery
Resources
| where type =~ 'Microsoft.Compute/virtualMachines'
| extend os = properties.storageProfile.osDisk.osType
| summarize count() by tostring(os)

###AzureCLI to pull Vm insatance details
az vm list --resource-group dotnetpiper-rg --query "[?storageProfile.osDisk.osType!=null] --output table

az vm list --resource-group dotnetpiper-rg --query "[?storageProfile.osDisk.managedDisk!=null].[id]" --output json