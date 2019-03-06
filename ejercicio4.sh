read -p "introduce un numero mayor que 0: " numero
contador=0
while [ $numero -le 0 ];do
    echo "numero erroneo"
    read -p "introduce un numero mayor que 0: " numero
done
while [ $numero -gt 0 ];do
	contador=`expr $contador + 1`
	numero=`expr $numero - 1`
        echo " $contador"
    done
