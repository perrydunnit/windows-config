# Setting up my own windows box
## Basics

```cmd
winget install -e --id Mozilla.Firefox
winget install -e --id wez.wezterm
```

## Development
### Winget
```cmd
winget install -e --id Docker.DockerDesktop
winget install -e --id Git.Git
winget install -e --id Microsoft.VisualStudioCode
winget install -e --id OpenJS.NodeJS
winget install -e --id Python.Python.3.11
```

### Docker
WSL 2 feature on Windows (requires Admin powershell)
```PowerShell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux 
```
### PSTools

### Configuration
#### WezTerm
Copy `/userprofile/.wezterm.lua` into `%userprofile%`.

Download and install [Fira Code font](https://github.com/tonsky/FiraCode/releases)

#### GitHub
Get an SSH key set up using [this guide](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

#### Path
Add `%userprofile%\path` and `%userprofile%\path\pstools%` to path

## Gaming
```cmd
winget install -e --id Valve.Steam
```