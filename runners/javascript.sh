#!/usr/bin/env bash

# Запуск node.js скрипта и передача на его stdin файла
# который указал пользователь перед запуском кода
cat stdin.txt | node main.js
