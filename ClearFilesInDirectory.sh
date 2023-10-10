#!/bin/bash

read -p "Укажите расположение директории: " DELDIR

if [ -e $DELDIR ]
    then
        echo 'Директория найдена'
        cd $DELDIR
        echo 'Выполняется очистка директории'
        rm -v *.bak *.tmp *.backup
        echo 'Очистка директории выполнена'
    else
        echo 'Директория не найдена, выполнение остановлено'
        exit 2
fi