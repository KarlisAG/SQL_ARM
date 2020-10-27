$projectName = "AnotherTry" #Read-Host -Prompt "Enter the same project name that is used earlier"
$location = "northeurope" #Read-Host -Prompt "Enter the location (i.e. centralus)"
#$adminUsername = "trytenuser" #Read-Host -Prompt "Enter the SQL admin username"
#$adminPassword = "try10userPW!" #Read-Host -Prompt "Enter the admin password" -AsSecureString
$storageAccountKey = "+/6lK3BYhwskoBu9Bmvr0swQ/mcFw0wHfNLrbSf2FJ+rFhbFE7VZEWlNPNvMYgHZg9CFCWMI1AsiAovO0Vmu7A==" #Read-Host -Prompt "Enter the storage account key"
$bacpacUrl = "https://bakdbstorage.blob.core.windows.net/blob4bacpac/AdventureWorksLT2019.bacpac" #Read-Host -Prompt "Enter the URL of the BACPAC file"
$resourceGroupName = "Elastic-ARM"

#New-AzResourceGroup -Name $resourceGroupName -Location $location
New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile "C:\Tasks\Task4\Elastic_ARM\azuredeploy.json" `
    -TemplateParameterFile "C:\Tasks\Task4\Elastic_ARM\azuredeploy.parameters.json" `
    -storageAccountKey $storageAccountKey `
    -bacpacUrl $bacpacUrl

Write-Host "Press [ENTER] to continue ..."