#!/bin/bash

for file in *.gd; do
    if [ -f "$file" ]; then
        echo "Форматирование $file..."
        gdscriptfmt "$file"
    fi
done

echo "Форматирование завершено."
