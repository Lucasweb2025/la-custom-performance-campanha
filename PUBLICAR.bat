@echo off
chcp 65001 >nul
title L.A CUSTOM - Publicar no Firebase
cd /d "%~dp0"

echo.
echo  ========================================
echo   L.A CUSTOM - Deploy Firebase Hosting
echo  ========================================
echo.

where npm >nul 2>&1
if errorlevel 1 (
  echo  [ERRO] Node.js nao encontrado.
  echo.
  echo  1. Instale: https://nodejs.org  (versao LTS)
  echo  2. Feche e abra este arquivo de novo
  echo.
  pause
  exit /b 1
)

echo  Instalando Firebase CLI (se necessario)...
call npm install -g firebase-tools
if errorlevel 1 (
  echo  [ERRO] Falha ao instalar firebase-tools
  pause
  exit /b 1
)

echo.
echo  Publicando site...
echo  (Na primeira vez abrira o navegador para login Google)
echo.
call firebase deploy --only hosting --project lacustomsperformace

if errorlevel 1 (
  echo.
  echo  Se pediu login, rode antes: firebase login
  pause
  exit /b 1
)

echo.
echo  ========================================
echo   PRONTO! Copie o link Hosting acima.
echo   Ex: https://lacustomsperformace.web.app
echo  ========================================
echo.
pause
