$Functions = (
  Get-ChildItem -Path $env:UserProfile\scrit\*.ps1 |
   Where-Object Name -NotMatch 'Microsoft.PowerShell_profile'
).FullName

$Functions | % { . $_ }
