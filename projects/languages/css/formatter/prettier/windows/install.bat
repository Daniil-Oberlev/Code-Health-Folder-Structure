@echo off
chcp 65001 >nul

echo 🚀 Проверяем наличие Node.js и npm...

:: Проверка наличия Node.js
where node >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ❌ Node.js не найден. Пожалуйста, установите Node.js.
    exit /b 1
)

:: Проверка наличия npm
where npm >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ❌ npm не найден. Пожалуйста, убедитесь, что npm установлен вместе с Node.js.
    exit /b 1
)

echo ✅ Node.js и npm найдены!

:: Установка Prettier
echo 🚀 Устанавливаем Prettier...
npm i -D prettier

:: Проверка успешности установки
if %ERRORLEVEL% EQU 0 (
    echo ✅ Prettier успешно установлен!
) else (
    echo ❌ Произошла ошибка при установке Prettier.
    exit /b 1
)
