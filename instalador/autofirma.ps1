# 1. Cerrar navegadores (evita errores en el registro de certificados)
Write-Host "[-] Cerrando navegadores..." -ForegroundColor Yellow
$procesos = @("chrome", "firefox", "msedge")
foreach ($p in $procesos) {
    Stop-Process -Name $p -Force -ErrorAction SilentlyContinue
}

# 2. Instalar AutoFirma vía WinGet
Write-Host "[!] Instalando AutoFirma (SpanishGovernment.Autofirma)..." -ForegroundColor Cyan

# --silent: Sin ventanas
# --accept-package-agreements: Acepta licencias de la app
# --accept-source-agreements: Acepta términos de Microsoft Store/WinGet
winget install --id SpanishGovernment.Autofirma --silent --accept-package-agreements --accept-source-agreements

if ($LASTEXITCODE -eq 0) {
    Write-Host "[V] AutoFirma instalado con éxito." -ForegroundColor Green
} else {
    Write-Host "[X] Hubo un error en la instalación. Código: $LASTEXITCODE" -ForegroundColor Red
}
