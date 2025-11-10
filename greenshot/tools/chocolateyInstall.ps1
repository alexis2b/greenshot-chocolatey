$ErrorActionPreference = 'Stop' # stop on all errors
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://github.com/greenshot/greenshot/releases/download/v1.3.301/Greenshot-INSTALLER-1.3.301-RELEASE.exe'
$checksumSha256 = 'b917f872d59065f297d63ee0f7228eb78d147f14af9be4fba950d1e8970a4be3'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Greenshot*'

  checksum      = $checksumSha256
  checksumType  = 'sha256'
  checksum64    = ''
  checksumType64= 'sha256'

  silentArgs   = '/ALLUSERS /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs

