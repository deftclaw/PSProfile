# Re-Strap Microsoft AppXPackages from the shared user areas : 1671617956
Function Restore-AppXPackage ( $Name ) {
  Function Add-Pkg ( $Package ) {
    Add-AppXPackage -DisableDevelopmentMode -Register "$($Package.InstallLocation)\AppXManifest.xml" -Verbose
  }

  $AppXList = Get-AppXPackage -AllUsers -Name *Name*
  
  $AppXList | % { Add-Pkg -Package $_ }
}
