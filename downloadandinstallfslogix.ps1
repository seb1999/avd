write-host 'AIB Customization: Downloading FsLogix'
New-Item -Path C:\\ -Name fslogix -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = 'C:\\fslogix'
$AVDflogixURL = 'https://github.com/seb1999/avd/master/PowerShell/FSLogixSetup.ps1'
$AVDFslogixInstaller = 'FSLogixSetup.ps1'
$outputPath = $LocalPath + '\' + $AVDFslogixInstaller
Invoke-WebRequest -Uri $WVDflogixURL -OutFile $outputPath
set-Location $LocalPath

$fsLogixURL="https://aka.ms/fslogix_download"
$installerFile="fslogix_download.zip"

Invoke-WebRequest $fsLogixURL -OutFile $LocalPath\$installerFile
Expand-Archive $LocalPath\$installerFile -DestinationPath $LocalPath
write-host 'AIB Customization: Download Fslogix installer finished'

write-host 'AIB Customization: Start Fslogix installer'
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force -Verbose
.\\FSLogixSetup.ps1 -ProfilePath \\avdSMB\avd -Verbose 
write-host 'AIB Customization: Finished Fslogix installer' 
