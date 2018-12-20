Param(
    [Parameter(Mandatory = $True)]
    [string]$Username,
    [Parameter(Mandatory = $True)]
    [string]$Password,
    [Parameter(Mandatory = $True)]
    [string]$SubscriptionId,
    [Parameter(Mandatory = $True)]
    [string]$TenantId
)

# Verified this will login using SPN
$SecretPassword = $Password | ConvertTo-SecureString -AsPlainText -Force
$Credential = New-Object System.Management.Automation.PSCredential($Username, $SecretPassword)

Connect-AzAccount -ServicePrincipal -Credential $Credential -TenantId $TenantId
Set-AzContext -SubscriptionId $SubscriptionId


# Verified parameters exist
New-AzApiManagementContext -ServiceName -ResourceGroupName
Get-AzApiManagement -Name -ResourceGroupName
Get-AzApiManagementProduct -Context -Title
New-AzApiManagementProduct -Context -Title -Description -State
Get-AzApiManagementProduct -Context -ProductId
Add-AzApiManagementApiToProduct -Context -ProductId -ApiId
Get-AzApiManagementOperation -Context -ApiId
New-AzApiManagementOperation -Context -ApiId -OperationId -Name -Method -UrlTemplate -Description
