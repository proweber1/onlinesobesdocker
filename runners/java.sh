#!/usr/bin/env bash

echo "Compile code..."

# Запускаем компиляцию исходного кода проекта
javac Main.java

# Запускаем пользователскую программу на исполнение и даем ей на вход
# ее stdin который указал пользователь, stdin может быть пустым
cat stdin.txt | java Main