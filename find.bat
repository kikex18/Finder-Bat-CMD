@Echo Off
::ntrando a directorio de descargas
Set "SrcDir=.\origin"
::eleccionando extensiones (jpeg, png, jpg)
Set "ExtLst=*.jpeg *.png *.jpg"
::delimitacion de variable
Set "i=0"
::delimitacion a 1 file y funcion random
For /F "Delims=" %%A In ('Where /R "%SrcDir%" %ExtLst%') Do (Set /A i+=1
    Call Set "$[%%i%%]=%%A")
Set /A #=(%Random%%%i)+1
::brir imagen random seleccionada
echo haz click para abrir la imagen
pause
Call Start "" "%%$[%#%]%%"
