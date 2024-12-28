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

:: Установка Stylelint
echo 🚀 Устанавливаем Stylelint...
npm install --save-dev stylelint stylelint-config-standard

:: Проверка успешности установки
if %ERRORLEVEL% EQU 0 (
    echo ✅ Stylelint успешно установлен!
) else (
    echo ❌ Произошла ошибка при установке Stylelint.
    exit /b 1
)

:: Проверка наличия Stylelint в node_modules
if exist "node_modules\.bin\stylelint" (
    echo ✅ Stylelint установлен локально в текущем проекте.
) else (
    echo ❌ Stylelint не найден в node_modules. Проверьте логи установки.
    exit /b 1
)