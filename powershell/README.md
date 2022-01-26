# sartorius
Sartorius Code goes here
Use this Doc for Syntax : 
> https://docs.github.com/en/github/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax


# Powershell

First lets check wich version is installed:
```powershell
$PSVersionTable
```
You will receive something like this. Check if the PSVersion higher than the published new verion in Internet.
```powershell
Name                           Value
----                           -----
PSVersion                      7.2.1
PSEdition                      Core
GitCommitId                    7.2.1
OS                             Darwin 21.2.0
RELEASE_X86_64
Platform                       Unix
PSCompatibleVersions           {1.0, 2.0, 3.0, 4.0…}
PSRemotingProtocolVersion      2.3
SerializationVersion           1.1.0.1
WSManStackVersion              3.0
```

To Connect to Az with PowerSehll we need to have the Module 'az' installed locally
to do so an check installed Moduled:


```powershell
Get-Module -ListAvailable Az*
```

Also we can install locally with copying a module to env
```powershell
$Env:PSModulePath  
```
you have a List of dirs in path. User and Globally 

###Using the *-Content cmdlets
##There are four *-Content cmdlets:
```powershell
Add-Content – appends content to a file.
Clear-Content – removes all content of a file.
Get-Content – retrieves the content of a file.
Set-Content – writes new content which replaces the content in a file.

#e.g
Get-Process -Name pwsh | Set-Content -Path C:\Foo\AAA.txt
```

We will receive a List of Modules of Az if Installed if not then

```powershell
Install-Module -Name Az.Accounts -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Advisor -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Aks -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.AnalysisServices -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.ApiManagement -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.AppConfiguration -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.ApplicationInsights -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Attestation -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Automation -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Batch -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Billing -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Cdn -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.CognitiveServices -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Compute -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.ContainerInstance -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.ContainerRegistry -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.CosmosDB -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.DataBoxEdge -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Databricks -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.DataFactory -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.DataLakeAnalytics -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.DataLakeStore -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.DataShare -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.DeploymentManager -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.DesktopVirtualization -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.DevTestLabs -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Dns -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.EventGrid -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.EventHub -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.FrontDoor -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Functions -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.HDInsight -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.HealthcareApis -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.IotHub -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.KeyVault -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Kusto -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.LogicApp -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.MachineLearning -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Maintenance -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.ManagedServices -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.MarketplaceOrdering -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Media -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Migrate -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Monitor -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Network -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.NotificationHubs -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.OperationalInsights -AllowClobber -Verbose -AcceptLicense -Confirm:$false -1Repository PSGallery
Install-Module -Name Az.PolicyInsights -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.PowerBIEmbedded -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.PrivateDns -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.RecoveryServices -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.RedisCache -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.RedisEnterpriseCache -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Relay -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.ResourceGraph -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.ResourceMover -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Resources -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Security -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.SecurityInsights -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.ServiceBus -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.ServiceFabric -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.SignalR -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Sql -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.SqlVirtualMachine -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Storage -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.StorageSync -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.StreamAnalytics -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Support -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.TrafficManager -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
Install-Module -Name Az.Websites -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery
```
You can now execute the Command again to see available Modules.
Now continue from here to connect to Az Account.
Connect to Azure PowerShell (starts a Browser Window to login)
```powershell
Connect-AzConnect 
```
Youll be redirected to Browser Window to connect. do this and go back to your Console of PowerShell
Connect to 'az' Module 

```powershell
az login
```
This Module takes you to one single Alias Short-Cut for the Whole Azure Functions like MS Graph, Azure AD, Managment Graph etc. No need to do single Logins to the API. So it makes life much easier. We can use this in ower PowerShell Console and Online. Not yet ready for 
the Automation Accounts Powershell.

From here just look up the Documention of Microsoft, it is there: 
https://docs.microsoft.com/de-de/cli/azure/reference-index?view=azure-cli-latest

> A nice Module to have nitty html out and excel etc. 
```powershell
Install-Module -Name PSWriteHtml -AllowClobber -Verbose -AcceptLicense -Confirm:$false -Repository PSGallery -AllUsers
Import-Module PSWriteHtml

# Usage 
Get-AzSubscription | out-HtmlView
```
## PowerShell Logics Snippets

Lets List all Subscription with Management Groups and All Tags CostCenter and Owner
we can write a KQL Query in this way first and test it in the Graph Query in Azure
```Powershell
resourcecontainers
| where type == 'microsoft.resources/subscriptions'
| mv-expand managementGroupParent = properties.managementGroupAncestorsChain
| mv-expand tags = tags
| project mgDisplayName = managementGroupParent.displayName, name, id,CostCenter = tags.CostCenter,Owner = tags.Owner
| sort by name asc
``` 
So in PowerShell as onliner you can do that
```Powershell
$listOfSubs = Search-AzGraph -Query "resourcecontainers| where type == 'microsoft.resources/subscriptions'| mv-expand tags = tags| mv-expand managementGroupParent = properties.managementGroupAncestorsChain| project mgDisplayName = managementGroupParent.displayName,name, id,CostCenter = tags.CostCenter,Owner = tags.Owner| sort by name asc"
$listOfSubs | Out-HtmlView
```
Using Paging and avoid 100 Limit in Search-AzGraph
```powershell

$listOfSubs = Search-AzGraph -Query "resourcecontainers| where type == 'microsoft.resources/subscriptions'| mv-expand tags = tags| mv-expand managementGroupParent = properties.managementGroupAncestorsChain| project mgDisplayName = managementGroupParent.displayName,name, id,CostCenter = tags.CostCenter,Owner = tags.Owner| sort by name asc"
$listOfSubs | Out-HtmlView

$pageSize = 5000
$iteration = 0
$searchParams = @{
    Query = "resourcecontainers| where type == 'microsoft.resources/subscriptions'| mv-expand tags = tags| mv-expand managementGroupParent = properties.managementGroupAncestorsChain| project mgDisplayName = managementGroupParent.displayName,name, id,CostCenter = tags.CostCenter,Owner = tags.Owner| sort by name asc"
    First = $pageSize
}
$listOfSubs = Search-AzGraph @searchParams
$listOfSubs.count
$listOfSubs | Out-HtmlView
```

To Do paging all in One just use following trick:
```powershell
$pageSize = 200
$iteration = 0
$searchParams = @{
    Query = "resourcecontainers| where type == 'microsoft.resources/subscriptions'| mv-expand tags = tags| mv-expand managementGroupParent = properties.managementGroupAncestorsChain| project mgDisplayName = managementGroupParent.displayName,name, id,CostCenter = tags.CostCenter,Owner = tags.Owner| sort by name asc"
    First = $pageSize
}

$results = do {
    $iteration += 1
    Write-Verbose "Iteration #$iteration" -Verbose
    $pageResults = Search-AzGraph @searchParams
    $searchParams.Skip += $pageResults.Count
    $pageResults
} while ($pageResults.Count -eq $pageSize)
$results.Count
```


If you want to Filter first fo a specific Management Group then use:
```Powershell
$MGRootName = "Tenant Root Group"
$listOfSubs = Search-AzGraph -Query "resourcecontainers| where type == 'microsoft.resources/subscriptions'| mv-expand tags = tags| mv-expand managementGroupParent = properties.managementGroupAncestorsChain| where managementGroupParent.displayName =~ '$($MGRootName)'| project mgDisplayName = managementGroupParent.displayName,name, id,CostCenter = tags.CostCenter,Owner = tags.Owner| sort by name asc"
$listOfSubs | Out-HtmlView
```
Same Idea also to extract all ResourceGroups of all Subscription with Tags and Owner
```Powershell
resources
| join kind=inner (
    resourcecontainers
    | where type == 'microsoft.resources/subscriptions'
    | project subscriptionId, subscriptionName = name)
    on subscriptionId
| mv-expand tags = tags   
| project subscriptionName, resourceGroup, name, type, tags.CostCenter, tags.Owner
```
> Query All Resources having public Ip Adress
```powershell
Resources
| where type contains 'publicIPAddresses' and isnotempty(properties.ipAddress)
| summarize count () by subscriptionId
```

> List all Resource having virtual NI

```powershell
resources
| where type == "microsoft.compute/virtualmachines"
| extend osDiskId= tolower(properties.storageProfile.osDisk.managedDisk.id)
    | join(
        resources
        | where type =~ 'microsoft.compute/disks'
        | where properties !has 'Unattached'
        | where properties has 'osType'
        | project OS = tostring(properties.osType), osSku = tostring(sku.name), osDiskSizeGB = toint(properties.diskSizeGB), osDiskId=tolower(id))
	on osDiskId
| extend nics=array_length(properties.networkProfile.networkInterfaces)
| mv-expand nic=properties.networkProfile.networkInterfaces
| where nics == 1 or nic.properties.primary =~ 'true' or isempty(nic)
| extend vmId = id, vmName = name, vmSize=tolower(properties.hardwareProfile.vmSize), nicId = tostring(nic.id)
    | join kind=leftouter (
        resources
        | where type =~ 'microsoft.network/networkinterfaces'
        | extend ipConfigsCount=array_length(properties.ipConfigurations)
        | mv-expand ipconfig=properties.ipConfigurations
        | where ipConfigsCount == 1 or ipconfig.properties.primary =~ 'true'
        | project nicId = id, privateIP= tostring(ipconfig.properties.privateIPAddress), publicIpId = tolower(ipconfig.properties.publicIPAddress.id), subscriptionId)
    on nicId
| project id, resourceGroup, OS, osSku, osDiskSizeGB, vmSize, privateIP, publicIpId, nicId, properties
```

> Query All Tags and Values
```powershell
ResourceContainers
| where isnotempty(tags)
| project tags
| mvexpand tags
| extend tagKey = tostring(bag_keys(tags)[0])
| extend tagValue = tostring(tags[tagKey])
| union (
	resources
	| where isnotempty(tags)
	| project tags
	| mvexpand tags
	| extend tagKey = tostring(bag_keys(tags)[0])
	| extend tagValue = tostring(tags[tagKey])
)
| distinct tagKey, tagValue
| where tagKey !startswith "hidden-"
```

## KQL Queries that has been used in this Project
In the Query Graph in Azure we can Store the Query for later use. We can use in Search-Az Graph or az graph query -q
> List all Public Ip Adresses
```Powershell
Resources
| where type contains 'publicIPAddresses' and isnotempty(properties.ipAddress)
| project properties.ipAddress
| limit 100
```
> Compliance by Policy Assignment
```Powershell
PolicyResources
| where type =~ 'Microsoft.PolicyInsights/PolicyStates'
| extend complianceState = tostring(properties.complianceState)
| extend
	resourceId = tostring(properties.resourceId),
	policyAssignmentId = tostring(properties.policyAssignmentId),
	policyAssignmentScope = tostring(properties.policyAssignmentScope),
	policyAssignmentName = tostring(properties.policyAssignmentName),
	policyDefinitionId = tostring(properties.policyDefinitionId),
	policyDefinitionReferenceId = tostring(properties.policyDefinitionReferenceId),
	stateWeight = iff(complianceState == 'NonCompliant', int(300), iff(complianceState == 'Compliant', int(200), iff(complianceState == 'Conflict', int(100), iff(complianceState == 'Exempt', int(50), int(0)))))
| summarize max(stateWeight) by resourceId, policyAssignmentId, policyAssignmentScope, policyAssignmentName
| summarize counts = count() by policyAssignmentId, policyAssignmentScope, max_stateWeight, policyAssignmentName
| summarize overallStateWeight = max(max_stateWeight),
nonCompliantCount = sumif(counts, max_stateWeight == 300),
compliantCount = sumif(counts, max_stateWeight == 200),
conflictCount = sumif(counts, max_stateWeight == 100),
exemptCount = sumif(counts, max_stateWeight == 50) by policyAssignmentId, policyAssignmentScope, policyAssignmentName
| extend totalResources = todouble(nonCompliantCount + compliantCount + conflictCount + exemptCount)
| extend compliancePercentage = iff(totalResources == 0, todouble(100), 100 * todouble(compliantCount + exemptCount) / totalResources)
| project policyAssignmentName, scope = policyAssignmentScope,
complianceState = iff(overallStateWeight == 300, 'noncompliant', iff(overallStateWeight == 200, 'compliant', iff(overallStateWeight == 100, 'conflict', iff(overallStateWeight == 50, 'exempt', 'notstarted')))),
compliancePercentage,
compliantCount,
nonCompliantCount,
conflictCount,
exemptCount
```
> Cost Saving Adivsory
```powershell
AdvisorResources
| where type == 'microsoft.advisor/recommendations'
| where properties.category == 'Cost'
| extend
	resources = tostring(properties.resourceMetadata.resourceId),
	savings = todouble(properties.extendedProperties.savingsAmount),
	solution = tostring(properties.shortDescription.solution),
	currency = tostring(properties.extendedProperties.savingsCurrency)
| summarize
	dcount(resources),
	bin(sum(savings), 0.01)
	by solution, currency
| project solution, dcount_resources, sum_savings, currency
| order by sum_savings desc
```
> CostCenter Query Tag
```powershell
| resources
|  where type == "microsoft.resources/subscriptions"
|mv-expand bagexpansion=array tags
| where isnotempty(tags)
	| where tags[0] =~ 'CostCenter'
```
> select Compliant MG Groups by Policy
```powershell
SecurityResources
| where type == 'microsoft.security/securescores'
| project subscriptionId,
	subscriptionTotal = iff(properties.score.max == 0, 0.00, round(tolong(properties.weight) * todouble(properties.score.current)/tolong(properties.score.max),2)),
	weight = tolong(iff(properties.weight == 0, 1, properties.weight))
| join kind=leftouter (
	ResourceContainers
	| where type == 'microsoft.resources/subscriptions' and properties.state == 'Enabled'
	| project subscriptionId, mgChain=properties.managementGroupAncestorsChain )
	on subscriptionId
| mv-expand mg=mgChain
| summarize sumSubs = sum(subscriptionTotal), sumWeight = sum(weight), resultsNum = count() by tostring(mg.displayName), mgId = tostring(mg.name)
| extend secureScore = iff(tolong(resultsNum) == 0, 404.00, round(sumSubs/sumWeight*100,2))
| project mgName=mg_displayName, mgId, sumSubs, sumWeight, resultsNum, secureScore
| order by mgName asc
```
> Select all Subscription Key Vaults 

```powershell
Resources
| join kind=leftouter (ResourceContainers | where type=='microsoft.resources/subscriptions' | project SubName=name, subscriptionId) on subscriptionId
| where type == 'microsoft.keyvault/vaults'
| project type, name, SubName
```

> List all Virtaul Networks
```powershell
Resources
| where type =~ 'microsoft.network/networkinterfaces'
| project id, ipConfigurations = properties.ipConfigurations
| mvexpand ipConfigurations
| project id, subnetId = tostring(ipConfigurations.properties.subnet.id)
| parse kind=regex subnetId with '/virtualNetworks/' virtualNetwork '/subnets/' subnet
| project id, virtualNetwork, subnet
```


First of all we want to know if a Command exits and which Module

e.g. the receive all ResourceGroups: 
```powershell
Get-Command -Name Get-AzResourceGroup
```
also if you do around the Alias Az
```powershell
Get-Command -Name az
```

Connect to Az and  assign a specific Subscription by ID e.g

```powershell
Get-AzConnection
Get-AzSubscription -SubscriptionId 2003-232323-23--23--23 | Select-AzSubscription
```

To Receive a list of all Subscriptions, just do: 
 ```powershell
Get-AzSubscription 
```

If you want to loop into and Array of output then:

```powershell
<#
# this Script will select every Subscription in the Tenant and receive a List of the ResourceGroups
#>
$ListSubscriptions = Get-AzSubscription 
foreach ($item in $ListSubscriptions ){
    # select the Subscription and assign it to retreive Info eg. ResourceGroups
    Get-AzSubscription -SubscriptionId $item.SubscriptionId | Select-AzSubscription

    Get-AzResourceGroups
    }
```

As you see we can from here deal with the whole Tenant in one single Loop. Also we can do a lot of Stoff like Connecting to Az and AD etc. 

We also can do all this with 'az' module:

```powershell
az login 
# first we have also to convert from Json to Object to retreive Parameter and deal with Object in Loop
$ListSubscriptions =   az account list |ConvertFrom-Json
foreach($item in $ListSubscriptions){
    # set the Account 
     az account set -s $s
     az group list 
}
```
Same but shorter :) 

So lets do create CSV File from a List above Example
```powershell
# lets loop all subscriptions and receive all Groups Name e.g
az login 
# create the Array to hold Rows of the Listing 
$newCsv = @()
$csvRow = [PSCustomObject] @{
            'SubscriptionId'           = $null
            'ResourceGroup'         = $null
            
    }
$ListSubscriptions =   az account list |ConvertFrom-Json
foreach($item in $ListSubscriptions){
    # set the Account 
    az account set -s $s
    # create Group List variable to loop
    $gorups = az group list 
    write-Host "count Groups in Sub "+$groups.count
    foreach($g in $groups){
        # put the Group and Sub in the Object (new one)
        $csvRow = [PSCustomObject] @{
                'SubscriptionId'    = $null
                'ResourceGroup'     = $null
                
            }  
        $csvRow.SubscriptionId = $item.id
        $csvRow.ResourceGroup  = $g.name
        # add the Row to Array of CSV
        $newCsv += $csvRow   
        write-verbose "Object added to Array "+$newCsv.count
    }
}
write-output "create the CSV File"
$CsvFileName = "SubGroups.csv"
$newCsv | Export-Csv $CsvFileName -NoTypeInformation
```

as you see now we can do alsmost everything withen this Loops 


```powershell
# Create PS Object and Array
$automationaccounts = @()
$rb  = New-Object PSCustomObject
$rb | Add-Member -type NoteProperty -name SubscriptionId -Value ""
$rb | Add-Member -type NoteProperty -name AutomationAccountName -Value ""
$rb | Add-Member -type NoteProperty -name ResourceGroup -Value ""
```

Lets have a Look into AD Modul. Here is an Example that finde expiring Secret the last 60 Days from now
```powershell
 <#
    How do I get rid of the warnings?
    To suppress these warning messages, set the environment variable 'SuppressAzurePowerShellBreakingChangeWarnings' to 'true'.
    #>
Set-Item Env:\SuppressAzurePowerShellBreakingChangeWarnings "true"

$apps = Get-AzADApplication
$xs = Get-Date
$ys = Get-Date (Get-Date).AddDays(+60)
$alertListExps = @()
$alertListExpd = @()

foreach ($app in $apps) 
{ 
    
    $secrets = Get-AzADAppCredential -ObjectId $app.ObjectId
    ## list Property of Object to look inside. very good when it comes to json objects
    $secrets | Select *

    if ($null -eq $secrets){}
    else 
    {  
        foreach ($secret in $secrets) 
        { 
            $secretDate = [datetime]$secret.EndDate #::parseexact($secret.EndDate,'dd/MM/yyyy HH:mm:ss',$null)
            
            if ($secretDate -le $xs) 
            {
               $alertListExpd += "*App:* " + $app.DisplayName + " *exired:* " + $secret.EndDate + ' ' + '(' + $secret.Type + ')' | Out-String
            }
            elseif ($secretDate -le $ys) 
            {
               $alertListExps += "*App:* " + $app.DisplayName + " *exires:* " + $secret.EndDate + ' ' + '(' + $secret.Type + ')' | Out-String
            }
        }
    }
```

# Installing Dependencies of Module
If you specify your dependencies in RequiredModules within your Module Manifests, you can use this snippet to install all your dependencies.
```powershell
$env:PSModulePath -split ":" `
| Get-ChildItem -Filter *.psd1 -Recurse `
| Import-PowerShellDataFile -ErrorAction SilentlyContinue `
| % {$_["RequiredModules"]} `
| % {@{Name = $_["ModuleName"]; RequiredVersion = $_["ModuleVersion"]}} `
| ? {-not (Get-Module @_ -ListAvailable)} `
| % {Install-Module @_}


> Shorten the Path in PowerShell Console
In PowerShell pwsh type `$PROFILE` then edit the File and add:
```bash
function prompt {
  $p = Split-Path -leaf -path (Get-Location)
  "$p> "
}
```



# My Bash Help
> https://swcarpentry.github.io/shell-novice/reference.html

List File in Directory and show hidden too, list and sort by change date
```
ls -lrta
```

Remove file or directory (e.g remove all csv files *.csv postfix ending)
```
rm *.csv 
```

Remove Directory recuservly (using parameter r recursivly , f force remove)

```
rm -rf directory_name/ 
```





# git help

Initialize a Repo 
First lets see the git configurations:
* System Git config scope
* Global Git config scope
* Local Git config scope
* Worktree Git config scope
* Portable  Git config scope on a Windows machine
```bash 
git config --list 
```
and the configuration for the current repo 

```bash 
git config --list --show-origin
```
set the configuration value depends on the env. 

```bash 
git config --global user.name hamudihlihel
```


```bash 
git init
```
commit whether you have new or changes
```
git commit -m 'your message'
```
Git Add the Remote Repository if new 
```
 git remote add origin  URL-to-REMOTE-REPO
```
Git clone the URL 
```
git clone URL-to-REMOTE-REPO
```
Git push the Origin master/main branch
```
git push -u origin main
```
Git Change the branch to Main if master

```
git branch -M main
```
Git set up the remote upstream url 

```
git remote add upstream https://github.com/HamudiLeon/Sartorius-AG.git
```

## Git workflow to EDIT / ADD / COMMIT / PUSH /LOG
As simple you can create one line function to do this 

```bash
 git add --all
 # or git add . or use --force to force add
 git commit -m -a 'your message'
 # see status
 git status 
 ## push to origin main branch 
 git push origin main #commit to remote
 ## show logs
 git log --graph
 
```    
# History Block
```bash
    1  pwd
    2  cd git/
    3  pwd
    4  ls
    5  cd Sartorius-AG/
    6  git 
    7  git status 
    8  git config --list
    9  git push origin main
   10  cd ..
   11  git clone https://sartorius-sca@dev.azure.com/sartorius-sca/it_io-cloudops/_git/cloud-process-automation
   12  ls
   13  cd cloud-process-automation/
   14  ls
   15  vi README.md 
   16  cp ../Sartorius-AG/* .
   17  cp -rf../Sartorius-AG/* .
   18  cp -r./Sartorius-AG/* .
   19  ls
   20  cp -r ../Sartorius-AG/ .
   21  ls
   22  cd Sartorius-AG/
   23  rm -rf .git
   24  cd ..
   25  pwd
   26  lls -la
   27  ls -la
   28  mv Sartorius-AG/ automation
   29  ls
   30  mkdir modules
   31  ls
   32  git add --all --force
   33  git status
   34  git push origin main
   35  git status
   36  git commit -m "first Addition of Files"
   37  git status
   38  git push origin main
   39  git fetch
   40  ls
   41  touch modules/.gitignore
   42  historz
   43  history
   44  history 32
   45  man history
   46  git add --all --force
   47  git status
   48  history >> README.md 
```   
GIT 
```bash


credential.helper=osxkeychain
user.name=hamudihlihel
user.email=mhlihel@googlemail.com
core.excludesfile=~/.gitignore
core.editor=nvim
push.default=simple
color.status=auto
color.diff=auto
color.branch=auto
color.interactive=auto
color.grep=auto
color.ui=auto
alias.a=!git status --short | peco | awk '{print $2}' | xargs git add
alias.d=diff
alias.co=checkout
alias.ci=commit
alias.ca=commit -a
alias.ps=!git push origin $(git rev-parse --abbrev-ref HEAD)
alias.pl=!git pull origin $(git rev-parse --abbrev-ref HEAD)
alias.st=status
alias.br=branch
alias.ba=branch -a
alias.bm=branch --merged
alias.bn=branch --no-merged
alias.df=!git hist | peco | awk '{print $2}' | xargs -I {} git diff {}^ {}
alias.hist=log --pretty=format:"%Cgreen%h %Creset%cd %Cblue[%cn] %Creset%s%C(yellow)%d%C(reset)" --graph --date=relative --decorate --all
alias.llog=log --graph --name-status --pretty=format:"%C(red)%h %C(reset)(%cd) %C(green)%an %Creset%s %C(yellow)%d%Creset" --date=relative
alias.open=!hub browse
alias.type=cat-file -t
alias.dump=cat-file -p
alias.find=!f() { git log --pretty=format:"%h %cd [%cn] %s%d" --date=relative -S'pretty' -S"$@" | peco | awk '{print $1}' | xargs -I {} git diff {}^ {}; }; f
alias.edit-unmerged=!f() { git ls-files --unmerged | cut -f2 | sort -u ; }; vim `f`
alias.add-unmerged=!f() { git ls-files --unmerged | cut -f2 | sort -u ; }; git add `f`
hub.protocol=https
github.user=hamudihlihel
diff.tool=nvimdiff
difftool.nvimdiff.cmd=nvim -d "$LOCAL" "$REMOTE"
difftool.nvimdiff.path=
mergetool.nvimdiff.cmd=nvim -d "$LOCAL" "$REMOTE" -ancestor "$BASE" -merge "$MERGED"
mergetool.nvimdiff.trustexitcode=true
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.required=true
filter.lfs.process=git-lfs filter-process
ghq.root=~/.ghq
core.repositoryformatversion=0
core.filemode=true
core.bare=false
core.logallrefupdates=true
core.ignorecase=true
core.precomposeunicode=true
remote.origin.url=https://leon.koellerwirth@dev.azure.com/sartorius-sca/it_io-cloudops/_git/cloud-process-automation
remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
branch.main.remote=origin
branch.main.merge=refs/heads/main
remote.github.url=https://github.com/HamudiLeon/cloud_operation.git
remote.github.fetch=+refs/heads/*:refs/remotes/github/*
``` 
# Goodies of Terminal Usage 
## iTermin 
> use this after Installation 
> curl -L https://iterm2.com/shell_integration/install_shell_integration.sh | bash 
# Install Fish Terminal 
Under Fish install exa tide and themes to make it beautiful