# Greenshot Chocolatey package release instructions

To list recent stable releases of Greenshot, go to https://github.com/greenshot/greenshot/releases.

To generate a new Chocolatey package for a stable version:

1. update stable version number and release notes in `greenshot.nuspec`

2. update the installer url and checksum in `chocolateyInstall.ps1` (URL to GitHub release assets)

3. from the `greenshot` directory, build the package with the following command: `choco pack .\greenshot.nuspec`

4. test the validity of the package with the command `choco install greenshot -s . -y --noop`

5. (maintainer only) upload it to the community packages repository with `choco push --source https://push.chocolatey.org/ --api-key <your_api_key>`