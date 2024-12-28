#!/bin/bash

# Устанавливаем кодировку UTF-8
export LANG=en_US.UTF-8

echo "🚀 Проверяем наличие Node.js и npm..."

# Проверяем, установлен ли Node.js
if ! command -v node &> /dev/null
then
    echo "❌ Node.js не найден. Пожалуйста, установите Node.js и попробуйте снова."
    exit 1
fi

# Проверяем, установлен ли npm
if ! command -v npm &> /dev/null
then
    echo "❌ npm не найден. Пожалуйста, убедитесь, что npm установлен вместе с Node.js."
    exit 1
fi

echo "✅ Node.js и npm найдены!"

# Устанавливаем Stylelint и необходимые плагины для SCSS
echo "🚀 Устанавливаем Stylelint и плагины для SCSS..."
npm install --save-dev stylelint stylelint-config-standard stylelint-scss

# Проверяем, успешно ли выполнена установка
if [ $? -eq 0 ]; then
    echo "✅ Stylelint с поддержкой SCSS успешно установлен!"
else
    echo "❌ Произошла ошибка при установке Stylelint с поддержкой SCSS."
    exit 1
fi

# Проверяем наличие Stylelint в node_modules
if [ -f "node_modules/.bin/stylelint" ]; then
    echo "✅ Stylelint установлен локально в текущем проекте."
else
    echo "❌ Stylelint не найден в node_modules. Проверьте логи установки."
    exit 1
fi
