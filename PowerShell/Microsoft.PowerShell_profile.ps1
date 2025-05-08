$env:Path = "C:\Users\aaqibimran\AppData\Local\Programs\oh-my-posh\bin;$env:Path"
$env:Path = "C:\Users\aaqibimran\nvim\bin;$env:Path"
$env:Path = "C:\Users\aaqibimran\w64devkit\bin;$env:Path"
$env:Path = "C:\Users\aaqibimran\mpv;$env:Path"
$env:Path = "C:\Users\aaqibimran\lazygit;$env:Path"
$env:Path = "C:\Users\aaqibimran\cmake\bin;$env:Path"
$env:Path = "C:\Users\aaqibimran\gettext\bin;$env:Path"
$env:Path = "C:\Users\aaqibimran\protoc\bin;$env:Path"

function rrmrf { param($path) Remove-Item -Path $path -Recurse -Force }
Set-Alias rm rrmrf

Import-Module z

Set-Alias ls Get-ChildItem -Option AllScope
function Get-ChildItem {
    param (
        [string]$Path = "."
    )
    Microsoft.PowerShell.Management\Get-ChildItem -Force -LiteralPath $Path
}


oh-my-posh init pwsh --config ~/catppuccin.omp.json | Invoke-Expression
