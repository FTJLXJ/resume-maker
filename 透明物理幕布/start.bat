@echo off
chcp 65001 >nul
title 透明物理幕布

echo ==============================
echo   透明物理幕布 - 启动中...
echo ==============================
echo.

:: 检测 Python
where python >nul 2>&1
if %errorlevel% equ 0 (
    set PY=python
) else (
    where python3 >nul 2>&1
    if %errorlevel% equ 0 (
        set PY=python3
    ) else (
        echo [错误] 未找到 Python，请先安装 Python 3
        echo 下载地址: https://www.python.org/downloads/
        pause
        exit /b 1
    )
)

echo 启动 HTTP 服务器...
echo.
echo 浏览器将自动打开，如未打开请访问:
echo   http://localhost:8080/transparent-cloth.html
echo.
echo 按 Ctrl+C 可停止服务器
echo ==============================

start "" http://localhost:8080/transparent-cloth.html
%PY% -m http.server 8080

pause
