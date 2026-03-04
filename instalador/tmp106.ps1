Write-Host "Iniciando instalación combinada (AutoFirma + Google Earth Pro)..." -ForegroundColor Yellow

# 1. Instalación de AutoFirma
Write-Host "1/2 Instalando AutoFirma..." -ForegroundColor Cyan
winget install --id SpanishGovernment.Autofirma --silent --accept-package-agreements --accept-source-agreements

# 2. Instalación de Google Earth Pro
Write-Host "2/2 Instalando Google Earth Pro..." -ForegroundColor Cyan
winget install --id Google.EarthPro --silent --accept-package-agreements --accept-source-agreements

if ($LASTEXITCODE -eq 0) {
    Write-Host "Ambas aplicaciones se han instalado correctamente." -ForegroundColor Green
} else {
    Write-Host "El proceso finalizó, pero algunas instalaciones podrían haber fallado." -ForegroundColor Red
}

