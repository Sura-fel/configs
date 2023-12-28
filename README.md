# Install Git, Choco 
Install git through the (installer) [https://github.com/git-for-windows/git/releases/download/v2.43.0.windows.1/Git-2.43.0-64-bit.exe]
For choco
```console
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

## Install MinGW
```console
choco install mingw -y
```

## Install RipGrep
```console
choco install ripgrep -y
```

## Install fd
```console
choco install fd -y
```

## Refresh the environment
```console
Set-ExecutionPolicy Bypass -Scope Process -Force; Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1
```

