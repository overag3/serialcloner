$ErrorActionPreference = 'Stop'
$url = 'http://serialbasics.free.fr/Serial_Cloner-Download_files/SerialCloner2-6_Install.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url            = $url
  softwareName   = 'Serial Cloner*'
  checksum       = 'DD12834C36B562F6AE3017B3BFD7F9631D5A662537F27FB2E5BF6E2D3DCA71F0'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
