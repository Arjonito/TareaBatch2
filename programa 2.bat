@echo off
setlocal enabledelayedexpansion

:inicio
cls
echo ---------------------------------
echo Bienvenido al juego de adivinanza 
echo ---------------------------------
echo.
set /a objetivo=%random% %% 100 + 1
set intentos=0

:adivina
set /p num="Introduce tu suposición (entre 1 y 100): "
set /a intentos+=1

if %num% lss %objetivo% (
    echo Tu suposición es demasiado baja.
    goto adivina
) else if %num% gtr %objetivo% (
    echo Tu suposición es demasiado alta.
    goto adivina
) else (
    echo ¡Felicidades! Adivinaste el número en %intentos% intentos.
    echo.
    set /p jugar_otra_vez="¿Quieres jugar de nuevo? (s/n): "
    if /i "%jugar_otra_vez%"=="s" goto inicio
)

endlocal

