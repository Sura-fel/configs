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

## Cargo Watch
```console
cargo binstall cargo-watch
