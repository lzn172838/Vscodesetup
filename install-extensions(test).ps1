Write-Host "Instalando extensões no VS Code"

$installed = code --list-extensions

Get-Content .\extensions.txt | ForEach-Object {

    $extension = $_.Trim()

    if ($extension -ne "") {

        if ($installed -contains $extension) {

            Write-Host "$extension já está instalada." -ForegroundColor Yellow

        } else {

            Write-Host "Instalando $extension ..." -ForegroundColor Green
            code --install-extension $extension

        }

    }

}

Write-Host "Instalação finalizada"
