Write-Host "Instalando Safe Exam Browser..." -ForegroundColor Cyan

# Instalación silenciosa vía WinGet
# ID: SafeExamBrowser.SafeExamBrowser
winget install --id SafeExamBrowser.SafeExamBrowser --silent --accept-package-agreements --accept-source-agreements

if ($LASTEXITCODE -eq 0) {
    Write-Host "Safe Exam Browser instalado con éxito." -ForegroundColor Green
} else {
    Write-Host "Error al instalar SEB. Código: $LASTEXITCODE" -ForegroundColor Red
}
