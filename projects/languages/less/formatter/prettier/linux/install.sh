#!/bin/bash

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

# Устанавливаем Prettier
echo "🚀 Устанавливаем Prettier..."
npm i -D prettier

# Проверяем, успешно ли выполнена установка
if [ $? -eq 0 ]; then
    echo "✅ Prettier успешно установлен!"
else
    echo "❌ Произошла ошибка при установке Prettier."
    exit 1
fi

# Проверяем наличие Prettier в node_modules
if [ -f "node_modules/.bin/prettier" ]; then
    echo "✅ Prettier установлен локально в текущем проекте."
else
    echo "❌ Prettier не найден в node_modules. Проверьте логи установки."
    exit 1
fi