#!/bin/bash

for file in *.gd; do
    if [ -f "$file" ]; then
        echo "Линтинг $file..."
        godot-linter "$file"
    fi
done

echo "Линтинг завершен."
