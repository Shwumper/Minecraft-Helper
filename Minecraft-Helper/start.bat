chcp 65001
@echo off
color 3
cls
echo Created by Shwumper.
echo Выберите действия:
echo Установить:
echo "1" - моды.
echo "2" - текстурпаки.
echo "3" - шейдеры.
echo Удалить:
echo "4" - моды.
echo "5" - текстурпаки.
echo "6" - шейдеры.
set /p action=Введите значение:
cls
echo Created by Shwumper.
if "%action%" == "4" (
    cls
    echo Created by Shwumper
    echo Удалите моды.
    echo Когда закончите, нажмите любую кнопку.
    echo Открываю папку...
    timeout /t 7
    explorer "%appdata%\.minecraft\mods\"
    pause
    timeout /t 5
    cls
    echo Created by Shwumper.
    echo Это окно принудительно закроется через 10 секунд!
    timeout /t 10
    exit
)
if "%action%" == "5" (
    cls
    echo Created by Shwumper
    echo Удалите текстурпаки.
    echo Когда закончите, нажмите любую кнопку.
    echo Открываю папку...
    timeout /t 7
    explorer "%appdata%\.minecraft\resourcepacks\"
    pause
    timeout /t 5
    cls
    echo Created by Shwumper.
    echo Это окно принудительно закроется через 10 секунд!
    timeout /t 10
    exit
)
if "%action%" == "6" (
    cls
    echo Created by Shwumper
    echo Удалите шейдеры.
    echo Когда закончите, нажмите любую кнопку.
    echo Открываю папку...
    timeout /t 7
    explorer "%appdata%\.minecraft\shaderpacks\"
    pause
    timeout /t 5
    cls
    echo Created by Shwumper.
    echo Это окно принудительно закроется через 10 секунд!
    timeout /t 10
    exit
)
set folder_name=files
set desktop_path=%USERPROFILE%\Desktop
if exist "%desktop_path%\%folder_name%\" (
    color 3
    cls
    echo Created by Shwumper
    echo Папка %folder_name% существует на рабочем столе, продолжаю работу...
) else (
    color 4
    cls
    echo Created by Shwumper
    echo Папка %folder_name% не существует на рабочем столе, создаю её...
    mkdir "%desktop_path%\%folder_name%"
)
timeout /t 4
color 3
cls
echo Created by Shwumper.
echo Перекиньте в эту папку файлы, которые хотите установить.
echo Когда закончите, нажмите любую кнопку.
echo Открываю папку...
timeout /t 7
explorer "%USERPROFILE%\Desktop\%folder_name%"
pause
cls
echo Created by Shwumper.
if "%action%" == "1" (
    echo Устанавливаю моды...
    mkdir "%USERPROFILE%\Desktop\files"
    move "%USERPROFILE%\Desktop\files\*" "%appdata%\.minecraft\mods\"
    color 2
    cls
    echo Created by Shwumper
    echo Моды установились успешно!
)
if "%action%" == "2" (
    echo Устанавливаю текстурпаки...
    mkdir "%USERPROFILE%\Desktop\files"
    move "%USERPROFILE%\Desktop\files\*" "%appdata%\.minecraft\resourcepacks\"
    color 2
    cls
    echo Created by Shwumper
    echo Текстурпаки установились успешно!
    echo Смените версию майнкрафта на optifine, иначе текстурпаки не будут работать.
)
if "%action%" == "3" (
    echo Устанавливаю шейдеры...
    mkdir "%USERPROFILE%\Desktop\files"
    move "%USERPROFILE%\Desktop\files\*" "%appdata%\.minecraft\shaderpacks\"
    color 2
    cls
    echo Created by Shwumper
    echo Шейдеры установились успешно!
    echo Смените версию майнкрафта на optifine, иначе шейдеры не будут работать.
)
timeout /t 10
color 3
cls
echo Created by Shwumper.
echo Удалить папку %folder_name%?
set /p action=Введите значение (да/нет):
if "%action%" == "да" (
    echo Удаляю папку...
    rmdir /s /q "%USERPROFILE%\Desktop\%folder_name%"
)
timeout /t 5
cls
echo Created by Shwumper.
echo Это окно принудительно закроется через 10 секунд!
timeout /t 10
