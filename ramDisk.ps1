# Mount the RAM parition
function Mount-A() {
  # Import Helper-functions
  . $PSScriptRoot\log.ps1

  If (!( Get-PsDrive -Name A )) {
    imdisk -a -m a:\ -s 2G -p '/fs:ntfs /q /y'
  } else { Log -Message 'A:\ Drive already mounted' }
}

Mount-A
