# Deployment script for AppRolla framework
#
# Visit this site to learn about its features and see more examples:
# https://github.com/AppVeyor/AppRolla

# Staging environment
New-Environment Staging
Add-EnvironmentServer Staging "54.220.24.203"

New-Environment Production
# Add-EnvironmentServer Production "web.myserver.com" -DeploymentGroup web
# Add-EnvironmentServer Production "app.myserver.com" -DeploymentGroup app

# Azure environments
# New-AzureEnvironment Azure-Staging -CloudService <cloud-service-name> -Slot <Staging|Production>


# Customize web site details for web application deployment:

Set-WebsiteRole KatanaTest "KatanaTest" `
    -BasePath "C:\www\katanatest" `
    -WebsiteName "KatanaTest" `
    -WebsiteProtocol http `
    #-WebsiteIP <ip> `
    -WebsitePort 80 `
	# -WebsiteHost <your-domain> `

# Customize Windows service details:

#Set-ServiceRole $projectName <service-artifact-name> `
#    -BasePath <service-root-path>                      # e.g. c:\program files\myapp\myservice
#    -ServiceExecutable <exe-filename> `                # if service bin folder contains more that one .exe
#    -ServiceName <service-name> `
#    -ServiceDisplayName <display-name> `
#    -ServiceDescription <description> `



# Define your custom deployment tasks here, for example:

Set-DeploymentTask mytask -Before deploy {
    # do something here on remote server before deployment
}

#>