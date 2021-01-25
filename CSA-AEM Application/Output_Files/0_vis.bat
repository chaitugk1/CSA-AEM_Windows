REM @echo on
set pypath=
FOR /F "delims=" %%i IN ('dir /b /ad-h /t:c /od') DO SET a=%%i
cd %a%
for /d %%D in (*) do cd %%~fD
python ../../../aem2vtk.py
"C:\Program Files\ParaView 5.8.1-Windows-Python3.7-msvc2015-64bit\bin\paraview.exe" "spr_..vtk"
"C:\Program Files\ParaView 5.8.1-Windows-Python3.7-msvc2015-64bit\bin\paraview.exe" "dis_..vtk"

rem pause