@echo off
echo ========================================
echo   Deploy Site TDesk Solutions - GitHub
echo ========================================
echo.

echo 1. Verificando status do Git...
git status
echo.

echo 2. Adicionando arquivos ao Git...
git add .
echo.

echo 3. Criando commit...
git commit -m "Update: Site TDesk Solutions"
echo.

echo ========================================
echo   INSTRUCOES PARA FAZER PUSH:
echo ========================================
echo.
echo 1. Crie um repositorio no GitHub: https://github.com/new
echo 2. Nome: site-tdesk
echo 3. Descrissao: Site de divulgacao TDesk Solutions
echo 4. Deixe PUBLICO
echo 5. NAO marque "Initialize with README"
echo.
echo 6. Execute os comandos abaixo (substitua SEU-USUARIO):
echo.
echo    git remote add origin https://github.com/SEU-USUARIO/site-tdesk.git
echo    git branch -M main
echo    git push -u origin main
echo.
echo ========================================
echo   Pressione qualquer tecla para sair...
echo ========================================
pause >nul

