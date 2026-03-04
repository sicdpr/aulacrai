Write-Host "Instalando Google Earth Pro..." -ForegroundColor Cyan

# Ejecución directa de la instalación silenciosa
winget install --id Google.EarthPro --silent --accept-package-agreements --accept-source-agreements

if ($LASTEXITCODE -eq 0) {
    Write-Host "Proceso finalizado correctamente." -ForegroundColor Green
} else {
    Write-Host "Error en la instalación. Código: $LASTEXITCODE" -ForegroundColor Red
}
