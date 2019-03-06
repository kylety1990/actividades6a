read -p "introduce un numero,para acabar pon 0: " numero
contador=0
suma=0
media=0
while [ $numero -lt 0 ];do 
read -p "introduce un numero,para acabar pon 0: " numero
done
while [ $numero -gt 0 ]; do
    contador=`expr $contador + 1`
    suma=`expr $suma + $numero`
    media=`expr $suma / $contador`
    read -p "introduce un numero, para acabar pon 0: " numero
    
done
echo "La suma de todos los numeros es $suma y la media es $media "