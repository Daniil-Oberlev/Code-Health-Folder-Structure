#!/bin/bash

for file in *.gd; do
    if [ -f "$file" ]; then
        echo "Линтинг $file..."
        godot-linter "$file"
        
        echo "Форматирование $file..."
        gdscriptfmt "$file"
    fi
done

echo "Линтинг и форматирование завершены."
