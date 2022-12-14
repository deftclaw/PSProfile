# Get the date in epoch time : 1670974049
Function epoch ([Parameter]$UnEpoch) { 
  if ( $UnEpoch ) {
    (Get-Date -Date "01-01-1970") + ([System.TimeSpan]::FromSeconds(($UnEpoch)))
  } else {
    (Date -UFormat +%s).split('.')[0]
  }
}
