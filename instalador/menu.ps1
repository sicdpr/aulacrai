# Script Lanzador Maestro - AULA CRAI
# Usuario: sicdpr

# URL fija de tu repositorio en GitHub Pages
$base = "https://sicdpr.github.io/aulacrai/scripts/"

Clear-Host
Write-Host "================================" -ForegroundColor Cyan
Write-Host "     INSTALADOR AULA CRAI       " -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host "1. Instalar AutoFirma"
Write-Host "2. Instalar Safe Exam Browser"
Write-Host "3. Instalar TODO (Ambos)"
Write-Host "4. Salir"
Write-Host "--------------------------------"

$opcion = Read-Host "Selecciona una opcion (1-4)"

switch ($opcion) {
    "1" { irm ($base + "autofirma.ps1") | iex }
    "2" { irm ($base + "seb.ps1") | iex }
    "3" { 
        Write-Host "Iniciando instalacion completa..." -ForegroundColor Yellow
        irm ($base + "autofirma.ps1") | iex
        irm ($base + "seb.ps1") | iex
    }
    "4" { exit }
    default { Write-Host "Opcion no valida" -ForegroundColor Red }
}
