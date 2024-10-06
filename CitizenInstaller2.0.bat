@echo off
color 09
chcp 65001 >nul 

setlocal enabledelayedexpansion
echo                                     ▄████▄   ██▓▄▄▄█████▓ ██▓▒███████▒▓█████  ███▄    █  
echo                                    ▒██▀ ▀█  ▓██▒▓  ██▒ ▓▒▓██▒▒ ▒ ▒ ▄▀░▓█   ▀  ██ ▀█   █   
echo                                    ▒▓█    ▄ ▒██▒▒ ▓██░ ▒░▒██▒░ ▒ ▄▀▒░ ▒███   ▓██  ▀█ ██▒  
echo                                    ▒▓▓▄ ▄██▒░██░░ ▓██▓ ░ ░██░  ▄▀▒   ░▒▓█  ▄ ▓██▒  ▐▌██▒ 
echo                                    ▒ ▓███▀ ░░██░  ▒██▒ ░ ░██░▒███████▒░▒████▒▒██░   ▓██░  
echo                                    ░ ░▒ ▒  ░░▓    ▒ ░░   ░▓  ░▒▒ ▓░▒░▒░░ ▒░ ░░ ▒░   ▒ ▒   
echo                                    ░         ▒ ░  ░       ▒ ░░ ░ ░ ░ ░   ░      ░   ░ ░   
echo                                    ░ ░       ░            ░    ░ ░       ░  ░         ░  
echo                                    ░                         ░                           
echo                            ███▄ ▄███▓ ▄▄▄       ███▄    █  ▄▄▄        ▄████ ▓█████  ██▀███  
echo                           ▓██▒▀█▀ ██▒▒████▄     ██ ▀█   █ ▒████▄     ██▒ ▀█▒▓█   ▀ ▓██ ▒ ██▒
echo                           ▓██    ▓██░▒██  ▀█▄  ▓██  ▀█ ██▒▒██  ▀█▄  ▒██░▄▄▄░▒███   ▓██ ░▄█ ▒
echo                           ▒██    ▒██ ░██▄▄▄▄██ ▓██▒  ▐▌██▒░██▄▄▄▄██ ░▓█  ██▓▒▓█  ▄ ▒██▀▀█▄  
echo                           ▒██▒   ░██▒ ▓█   ▓██▒▒██░   ▓██░ ▓█   ▓██▒░▒▓███▀▒░▒████▒░██▓ ▒██▒
echo                           ░ ▒░   ░  ░ ▒▒   ▓▒█░░ ▒░   ▒ ▒  ▒▒   ▓▒█░ ░▒   ▒ ░░ ▒░ ░░ ▒▓ ░▒▓░
echo                           ░  ░      ░  ▒   ▒▒ ░░ ░░   ░ ▒░  ▒   ▒▒ ░  ░   ░  ░ ░  ░  ░▒ ░ ▒░
echo                           ░      ░     ░   ▒      ░   ░ ░   ░   ▒   ░ ░   ░    ░     ░░   ░ 
echo                                  ░         ░  ░         ░       ░  ░      ░    ░  ░   ░                                                                  
echo 	                                                                           made	by el putisimo lekim.
set CONFIG_FILE=config.txt
if exist "%CONFIG_FILE%" (
    echo Leyendo archivo de configuración...
    for /f "tokens=1* delims=:" %%A in (%CONFIG_FILE%) do (
        set key=%%A
        set value=%%B
        
        REM Si el valor tiene un espacio inicial, lo quitamos
        if "!value:~0,1!"==" " set value=!value:~1!

        REM Para depuración, puedes eliminarlo después
        echo key=!key!, value=!value!  

        if /i "!key!"=="FiveM" set fivem_dir=!value!
        if /i "!key!"=="GTAV" set gtav_dir=!value!
        if /i "!key!"=="Citizen" set citizen_dir=!value!
    )
)

echo Rutas actuales:
echo FiveM: %fivem_dir%
echo GTAV: %gtav_dir%
echo Citizen: %citizen_dir%

if not defined fivem_dir (
    set /p fivem_dir="Introduce la ruta de instalación de FiveM: "
)
if not defined gtav_dir (
    set /p gtav_dir="Introduce la ruta de instalación de GTAV: "
)
if not defined citizen_dir (
    set /p citizen_dir="Introduce la ruta de la carpeta de los citizens: "
)

(
    echo FiveM:%fivem_dir%
    echo GTAV:%gtav_dir%
    echo Citizen:%citizen_dir%
) > "%CONFIG_FILE%"

:menu
cls
echo               ██▓    ▓█████  ██ ▄█▀ ██▓ ███▄ ▄███▓    ▄████▄   ██▓▄▄▄█████▓ ██▓▒███████▒▓█████  ███▄    █ 
echo              ▓██▒    ▓█   ▀  ██▄█▒ ▓██▒▓██▒▀█▀ ██▒   ▒██▀ ▀█  ▓██▒▓  ██▒ ▓▒▓██▒▒ ▒ ▒ ▄▀░▓█   ▀  ██ ▀█   █ 
echo              ▒██░    ▒███   ▓███▄░ ▒██▒▓██    ▓██░   ▒▓█    ▄ ▒██▒▒ ▓██░ ▒░▒██▒░ ▒ ▄▀▒░ ▒███   ▓██  ▀█ ██▒
echo              ▒██░    ▒▓█  ▄ ▓██ █▄ ░██░▒██    ▒██    ▒▓▓▄ ▄██▒░██░░ ▓██▓ ░ ░██░  ▄▀▒   ░▒▓█  ▄ ▓██▒  ▐▌██▒
echo              ░██████▒░▒████▒▒██▒ █▄░██░▒██▒   ░██▒   ▒ ▓███▀ ░░██░  ▒██▒ ░ ░██░▒███████▒░▒████▒▒██░   ▓██░
echo              ░ ▒░▓  ░░░ ▒░ ░▒ ▒▒ ▓▒░▓  ░ ▒░   ░  ░   ░ ░▒ ▒  ░░▓    ▒ ░░   ░▓  ░▒▒ ▓░▒░▒░░ ▒░ ░░ ▒░   ▒ ▒ 
echo              ░ ░ ▒  ░ ░ ░  ░░ ░▒ ▒░ ▒ ░░  ░      ░     ░  ▒    ▒ ░    ░     ▒ ░░░▒ ▒ ░ ▒ ░ ░  ░░ ░░   ░ ▒░
echo                ░ ░      ░   ░ ░░ ░  ▒ ░░      ░      ░         ▒ ░  ░       ▒ ░░ ░ ░ ░ ░   ░      ░   ░ ░ 
echo                  ░  ░   ░  ░░  ░    ░         ░      ░ ░       ░            ░    ░ ░       ░  ░         ░                                                                                                      
echo                        ██▓ ███▄    █   ██████ ▄▄▄█████▓ ▄▄▄       ██▓     ██▓    ▓█████  ██▀███  
echo                       ▓██▒ ██ ▀█   █ ▒██    ▒ ▓  ██▒ ▓▒▒████▄    ▓██▒    ▓██▒    ▓█   ▀ ▓██ ▒ ██▒
echo                       ▒██▒▓██  ▀█ ██▒░ ▓██▄   ▒ ▓██░ ▒░▒██  ▀█▄  ▒██░    ▒██░    ▒███   ▓██ ░▄█ ▒
echo                       ░██░▓██▒  ▐▌██▒  ▒   ██▒░ ▓██▓ ░ ░██▄▄▄▄██ ▒██░    ▒██░    ▒▓█  ▄ ▒██▀▀█▄  
echo                       ░██░▒██░   ▓██░▒██████▒▒  ▒██▒ ░  ▓█   ▓██▒░██████▒░██████▒░▒████▒░██▓ ▒██▒
echo                       ░▓  ░ ▒░   ▒ ▒ ▒ ▒▓▒ ▒ ░  ▒ ░░    ▒▒   ▓▒█░░ ▒░▓  ░░ ▒░▓  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo                        ▒ ░░ ░░   ░ ▒░░ ░▒  ░ ░    ░      ▒   ▒▒ ░░ ░ ▒  ░░ ░ ▒  ░ ░ ░  ░  ░▒ ░ ▒░
echo                        ▒ ░   ░   ░ ░ ░  ░  ░    ░        ░   ▒     ░ ░     ░ ░      ░     ░░   ░ 
echo                        ░           ░       ░                 ░  ░    ░  ░    ░  ░   ░  ░   ░     
echo ========================================
echo 1. Borrar todo: citizen, mods and plugins (instalacion nativa)
echo 2. Instalar citizen de PVP + Sonidos
echo 3. Instalar citizen realista + Sonidos
echo 4. Cambiar sonidos de GTAV
echo 5. Salir
echo ========================================
set /p option="Elige una opción: "

if "%option%"=="1" goto borrar_citizen
if "%option%"=="2" goto instalar_pvp
if "%option%"=="3" goto instalar_realista
if "%option%"=="4" goto cambiar_sonidos
if "%option%"=="5" goto salir

:borrar_citizen
echo Borrando citizen, mods y plugins...
rmdir /s /q "%fivem_dir%\citizen"
rmdir /s /q "%fivem_dir%\mods"
rmdir /s /q "%fivem_dir%\plugins"
echo ▄█          ▄████████    ▄█   ▄█▄  ▄█    ▄▄▄▄███▄▄▄▄     ▄██████▄  ███▄▄▄▄       ███      ▄██████▄     ▄███████▄ 
echo ███         ███    ███   ███ ▄███▀ ███  ▄██▀▀▀███▀▀▀██▄  ███    ███ ███▀▀▀██▄ ▀█████████▄ ███    ███   ███    ███ 
echo ███         ███    █▀    ███▐██▀   ███▌ ███   ███   ███  ███    ███ ███   ███    ▀███▀▀██ ███    ███   ███    ███ 
echo ███        ▄███▄▄▄      ▄█████▀    ███▌ ███   ███   ███  ███    ███ ███   ███     ███   ▀ ███    ███   ███    ███ 
echo ███       ▀▀███▀▀▀     ▀▀█████▄    ███▌ ███   ███   ███  ███    ███ ███   ███     ███     ███    ███ ▀█████████▀  
echo ███         ███    █▄    ███▐██▄   ███  ███   ███   ███  ███    ███ ███   ███     ███     ███    ███   ███        
echo ███▌    ▄   ███    ███   ███ ▀███▄ ███  ███   ███   ███  ███    ███ ███   ███     ███     ███    ███   ███        
echo █████▄▄██   ██████████   ███   ▀█▀ █▀    ▀█   ███   █▀   ▀██████▀   ▀█   █▀     ▄████▀    ▀██████▀   ▄████▀      
echo  ▀                        ▀                                                                                                 
echo Instalación nativa restaurada.
pause
goto menu

:instalar_pvp
echo Borrando citizen, mods y plugins anteriores...
rmdir /s /q "%fivem_dir%\citizen"
rmdir /s /q "%fivem_dir%\mods"
rmdir /s /q "%fivem_dir%\plugins"
echo Instalando citizen PvP...
xcopy /s /e /y "%citizen_dir%\pvp\citizen" "%fivem_dir%\citizen"
xcopy /s /e /y "%citizen_dir%\pvp\mods" "%fivem_dir%\mods"
xcopy /s /e /y "%citizen_dir%\pvp\plugins" "%fivem_dir%\plugins"
echo Instalando sonidos PvP en GTAV...
xcopy /s /e /y "%citizen_dir%\pvp\soundpack" "%gtav_dir%\x64\audio\sfx"
echo ▄█          ▄████████    ▄█   ▄█▄  ▄█    ▄▄▄▄███▄▄▄▄     ▄██████▄  ███▄▄▄▄       ███      ▄██████▄     ▄███████▄ 
echo ███         ███    ███   ███ ▄███▀ ███  ▄██▀▀▀███▀▀▀██▄  ███    ███ ███▀▀▀██▄ ▀█████████▄ ███    ███   ███    ███ 
echo ███         ███    █▀    ███▐██▀   ███▌ ███   ███   ███  ███    ███ ███   ███    ▀███▀▀██ ███    ███   ███    ███ 
echo ███        ▄███▄▄▄      ▄█████▀    ███▌ ███   ███   ███  ███    ███ ███   ███     ███   ▀ ███    ███   ███    ███ 
echo ███       ▀▀███▀▀▀     ▀▀█████▄    ███▌ ███   ███   ███  ███    ███ ███   ███     ███     ███    ███ ▀█████████▀  
echo ███         ███    █▄    ███▐██▄   ███  ███   ███   ███  ███    ███ ███   ███     ███     ███    ███   ███        
echo ███▌    ▄   ███    ███   ███ ▀███▄ ███  ███   ███   ███  ███    ███ ███   ███     ███     ███    ███   ███        
echo █████▄▄██   ██████████   ███   ▀█▀ █▀    ▀█   ███   █▀   ▀██████▀   ▀█   █▀     ▄████▀    ▀██████▀   ▄████▀      
echo  ▀                        ▀                                                                                                 
echo Citizen PvP y sonidos instalados.
pause
goto menu

:instalar_realista
echo Borrando citizen, mods y plugins anteriores...
rmdir /s /q "%fivem_dir%\citizen"
rmdir /s /q "%fivem_dir%\mods"
rmdir /s /q "%fivem_dir%\plugins"
echo Instalando citizen realista...
xcopy /s /e /y "%citizen_dir%\realism\citizen" "%fivem_dir%\citizen"
xcopy /s /e /y "%citizen_dir%\realism\mods" "%fivem_dir%\mods"
xcopy /s /e /y "%citizen_dir%\realism\plugins" "%fivem_dir%\plugins"
echo Instalando sonidos realistas en GTAV...
xcopy /s /e /y "%citizen_dir%\realism\soundpack" "%gtav_dir%\x64\audio\sfx"
echo ▄█          ▄████████    ▄█   ▄█▄  ▄█    ▄▄▄▄███▄▄▄▄     ▄██████▄  ███▄▄▄▄       ███      ▄██████▄     ▄███████▄ 
echo ███         ███    ███   ███ ▄███▀ ███  ▄██▀▀▀███▀▀▀██▄  ███    ███ ███▀▀▀██▄ ▀█████████▄ ███    ███   ███    ███ 
echo ███         ███    █▀    ███▐██▀   ███▌ ███   ███   ███  ███    ███ ███   ███    ▀███▀▀██ ███    ███   ███    ███ 
echo ███        ▄███▄▄▄      ▄█████▀    ███▌ ███   ███   ███  ███    ███ ███   ███     ███   ▀ ███    ███   ███    ███ 
echo ███       ▀▀███▀▀▀     ▀▀█████▄    ███▌ ███   ███   ███  ███    ███ ███   ███     ███     ███    ███ ▀█████████▀  
echo ███         ███    █▄    ███▐██▄   ███  ███   ███   ███  ███    ███ ███   ███     ███     ███    ███   ███        
echo ███▌    ▄   ███    ███   ███ ▀███▄ ███  ███   ███   ███  ███    ███ ███   ███     ███     ███    ███   ███        
echo █████▄▄██   ██████████   ███   ▀█▀ █▀    ▀█   ███   █▀   ▀██████▀   ▀█   █▀     ▄████▀    ▀██████▀   ▄████▀      
echo  ▀                        ▀                                                                                                 
echo Citizen realista y sonidos instalados.
pause
goto menu

:cambiar_sonidos
echo Cambiando sonidos de GTAV...
xcopy /s /e /y "%citizen_dir%\sonidos" "%gtav_dir%\x64\audio\sfx"
echo ▄█          ▄████████    ▄█   ▄█▄  ▄█    ▄▄▄▄███▄▄▄▄     ▄██████▄  ███▄▄▄▄       ███      ▄██████▄     ▄███████▄ 
echo ███         ███    ███   ███ ▄███▀ ███  ▄██▀▀▀███▀▀▀██▄  ███    ███ ███▀▀▀██▄ ▀█████████▄ ███    ███   ███    ███ 
echo ███         ███    █▀    ███▐██▀   ███▌ ███   ███   ███  ███    ███ ███   ███    ▀███▀▀██ ███    ███   ███    ███ 
echo ███        ▄███▄▄▄      ▄█████▀    ███▌ ███   ███   ███  ███    ███ ███   ███     ███   ▀ ███    ███   ███    ███ 
echo ███       ▀▀███▀▀▀     ▀▀█████▄    ███▌ ███   ███   ███  ███    ███ ███   ███     ███     ███    ███ ▀█████████▀  
echo ███         ███    █▄    ███▐██▄   ███  ███   ███   ███  ███    ███ ███   ███     ███     ███    ███   ███        
echo ███▌    ▄   ███    ███   ███ ▀███▄ ███  ███   ███   ███  ███    ███ ███   ███     ███     ███    ███   ███        
echo █████▄▄██   ██████████   ███   ▀█▀ █▀    ▀█   ███   █▀   ▀██████▀   ▀█   █▀     ▄████▀    ▀██████▀   ▄████▀      
echo  ▀                        ▀                                                                                                 
echo Sonidos de GTAV cambiados.
pause
goto menu

:salir
exit