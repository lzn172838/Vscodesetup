Write-Host "Instalando as extensões no VS Code"

Get-Content .\extensions.txt | ForEach-Object {
    $extension = $_.Trim()

    if ($extension -ne "") {
        Write-Host "Instalando $extension ..."
        code --install-extension $extension
    }
}

Write-Host "Todas as extensões foram instaladas!"
