#!/bin/bash

show_users() {
    echo "Перечень пользователей и их домашних директорий:"
    awk -F':' '{print $1 " -> " $6}' /etc/passwd | sort
}

show_processes() {
    echo "Перечень запущенных процессов:"
    ps -eo pid,comm --sort=pid
}

show_help() {
    echo "Usage: script [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  -u, --users          Вывести перечень пользователей и их домашних директорий"
    echo "  -p, --processes      Вывести перечень запущенных процессов"
    echo "  -h, --help           Показать справку"
    echo "  -l, --log PATH       Сохранить вывод в указанный файл"
    echo "  -e, --errors PATH    Сохранить ошибки в указанный файл"
}

log_output() {
    if [[ -w "$1" || ! -e "$1" && -w "$(dirname "$1")" ]]; then
        exec 1>>"$1"
    else
        echo "Ошибка: Нет доступа для записи в файл $1" >&2
        exit 1
    fi
}

log_errors() {
    if [[ -w "$1" || ! -e "$1" && -w "$(dirname "$1")" ]]; then
        exec 2>>"$1"
    else
        echo "Ошибка: Нет доступа для записи в файл $1" >&2
        exit 1
    fi
}

# Обработка аргументов
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -u|--users)
            ACTION="show_users"
            ;;
        -p|--processes)
            ACTION="show_processes"
            ;;
        -h|--help)
            show_help
            exit 0
            ;;
        -l|--log)
            shift
            log_output "$1"
            ;;
        -e|--errors)
            shift
            log_errors "$1"
            ;;
        *)
            echo "Неизвестный аргумент: $1" >&2
            show_help
            exit 1
            ;;
    esac
    shift
done

# Выполнение действия
if [[ -n "$ACTION" ]]; then
    $ACTION
else
    echo "Ошибка: Не указано действие. Используйте -h для справки." >&2
    exit 1
fi
