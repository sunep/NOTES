Write-Host "Downloading latest FFmpeg`r`n"
Write-Host "--------------------------`r`n"
Invoke-WebRequest "https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-essentials.zip" -outfile ffmpeg-release-essentials.zip | Out-Null
mkdir temp
Write-Host "Expanding HAP player`r`n"
Write-Host "--------------------------`r`n"
Expand-Archive -Path ffmpeg-release-essentials.zip -DestinationPath temp\ | Out-Null
Write-Host "Renaming FFmpeg Folder`r`n"
Write-Host "--------------------------`r`n"
mv temp\*ffmpeg* c:\FFmpeg\
Write-Host "Adding FFmpeg to path`r`n"
Write-Host "--------------------------`r`n"
$env:Path += ";C:\FFmpeg\bin\"
Write-Host "Deleting FFmpeg install files`r`n"
Write-Host "--------------------------`r`n"
rm temp\
rm ffmpeg-release-essentials.zip
