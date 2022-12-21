# Log to the specified outfile
Function Log {
  param(
    [Parameter(Mandatory=$True)][String]$Message,
    [Parameter()]$OutFile="$env:UserProfile\general.log"
  )
  # Import Helper-functions
  . $PSScriptRoot\epoch.ps1

  $Message="$(epoch)::$Message"

  Function ErrorColor($Text) {
    Write-Host -ForegroundColor Red -Object $Text
    Write-Output -InputObject "$Text::[Error]" | Out-File -FilePath "$OutFile" -Append
  }

  if(!( Test-Path -PathType Leaf -Path "$OutFile" )) {
    Write-Output -InputObject "Created at: $(epoch)" | Out-File -FilePath "$Outfile"
  }

  switch -regex ( $Message ) {
    '"*mood"*: "*error"*'   { ErrorColor -Text $Message }
    '"*mood"*: "*red"*'     { ErrorColor -Text $Message }
    '"*status"*: "*error"*' { ErrorColor -Text $Message }
    '"*status"*: "*red"*'   { ErrorColor -Text $Message }
    default {
      Write-Host -ForegroundColor Green $Message
      Write-Output -InputObject "$Message::[Info]" | Out-File -FilePath "$OutFile" -Append
    }
  }
}
