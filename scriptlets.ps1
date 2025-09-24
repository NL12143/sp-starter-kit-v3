
  Import-Module -Name PnP.PowerShell -RequiredVersion 1.12.0

  Get-Module *PNP*
# Install-Module -Name PnP.PowerShell

  Get-Module -Name PnP.PowerShell
  Update-Module -Name PnP.PowerShell

  Get-Command Read*
Read-PnPTenantTemplate
Read-PnPTenantTemplate -Path .\templates\starterkit.xml
$kit = Read-PnPTenantTemplate -Path ..\templates\starterkit.xml
Save-PnPTenantTemplate -Template $kit -Out yourstarterkit.pnp

Invoke-PnPTenantTemplate -Path starterkit.pnp

CD ".\react-site-information\sharepoint\solution"

npm install

npm install -g audit-export
npm audit --json | audit-export --path ./audit-report-pre-fix.html --title "SPFx Audit Report"

npm audit fix
npm audit fix --force
npm audit --json | audit-export --path ./audit-report-post-fix.html --title "SPFx Audit Report (Post-Fix)"

gulp serve

gulp trust-dev-cert
gulp bundle --ship
gulp package-solution --ship


