@echo off
REM Script de Setup do Projeto Cocacola para Windows
REM Este script instala todas as dependências e configura o projeto

echo.
echo ========================================
echo  Cocacola Setup - Windows
echo ========================================
echo.

REM Verificar se Node.js está instalado
where node >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [ERRO] Node.js nao esta instalado!
    echo Faca download em: https://nodejs.org/
    pause
    exit /b 1
)

echo [OK] Node.js encontrado: 
node --version
echo.
echo [OK] npm encontrado:
npm --version
echo.

REM Instalar dependências
echo [INSTALANDO] Dependencias...
call npm install

if %ERRORLEVEL% NEQ 0 (
    echo [ERRO] Erro ao instalar dependencias
    pause
    exit /b 1
)

echo [OK] Dependencias instaladas com sucesso!
echo.

REM Criar arquivo .env se não existir
if not exist .env (
    echo [CRIANDO] Arquivo .env...
    copy .env.example .env >nul
    echo [OK] Arquivo .env criado! Edite com suas credenciais do PostgreSQL
) else (
    echo [OK] Arquivo .env ja existe
)

echo.
echo ========================================
echo  Setup concluido com sucesso!
echo ========================================
echo.
echo Proximos passos:
echo 1. Edite o arquivo .env com suas credenciais do PostgreSQL
echo 2. Certifique-se de que o PostgreSQL esta rodando
echo 3. Execute: npm start (producao) ou npm run dev (desenvolvimento)
echo.
echo Para desenvolver com auto-reload: npm run dev
echo Para producao: npm start
echo.
pause
