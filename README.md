# Install Git, Choco 
Install git through the [installer](https://github.com/git-for-windows/git/releases/download/v2.43.0.windows.1/Git-2.43.0-64-bit.exe)
For choco
```console
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

## Install NeoVim
```console
curl https://github.com/neovim/neovim/releases/latest/download/nvim-win64.msi -o nvim-win64.msi
.\nvim-win64.msi /passive
```

## Install Rust
```console
curl https://win.rustup.rs/x86_64 -o rustup-init.exe
.\rustup-init.exe
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

## CargoBinInstall
```console
Set-ExecutionPolicy Unrestricted -Scope Process; iex (iwr "https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.ps1").Content
```
** Or **

```console
$ErrorActionPreference = "Stop"
Set-PSDebug -Trace 1
$tmpdir = ".\tmp\"
mkdir $tmpdir
cd $tmpdir
$base_url = "https://github.com/cargo-bins/cargo-binstall/releases/latest/download/cargo-binstall-"
$proc_arch = [Environment]::GetEnvironmentVariable("PROCESSOR_ARCHITECTURE", [EnvironmentVariableTarget]::Machine)
if ($proc_arch -eq "AMD64") {
	$arch = "x86_64"
} elseif ($proc_arch -eq "ARM64") {
	$arch = "aarch64"
} else {
	Write-Host "Unsupported Architecture: $type" -ForegroundColor Red
	[Environment]::Exit(1)
}
$url = "$base_url$arch-pc-windows-msvc.zip"
Invoke-WebRequest $url -OutFile ".\cargo-binstall.zip"
Expand-Archive -Force ".\cargo-binstall.zip" ".\cargo-binstall"
Write-Host ""
Invoke-Expression ".\cargo-binstall\cargo-binstall.exe -y --force cargo-binstall"
cd ..
Remove-Item -Recurse -Force $tmpdir
$cargo_home = if ($Env:CARGO_HOME -ne $null) { $Env:CARGO_HOME } else { "$HOME\.cargo" }
if ($Env:Path -split ";" -notcontains "$cargo_home\bin") {
	Write-Host ""
	Write-Host "Your path is missing $cargo_home\bin, you might want to add it." -ForegroundColor Red
	Write-Host ""
}
```
## Cargo Watch
```console
cargo binstall cargo-watch
```
