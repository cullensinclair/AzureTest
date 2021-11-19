Import-Module Az.Accounts
Connect-AzAccount
Set-AzContext -Subscription fd36df7f-1162-4df7-b2fb-cf7c6995149b
New-AzResourceGroup -Name SinclairTestRG -Location EastUS
New-AzResourceGroupDeployment -ResourceGroupName SinclairTestRG `
 -TemplateUri 'https://raw.githubusercontent.com/cullensinclair/AzureTest/master/azuredeploy.json'