read -p "introduce un numero del 1 al 30 para saber el dia de la semana: " numero
resto=`expr $numero % 7`
dia=espera
while [ $numero -le 0 ] || [ $numero -gt 30 ];do
read -p "introduce un numero del 1 al 30 para saber el dia de la semana: " numero
done
while [ $numero -gt 0 ] && [ $numero -le 30 ];do
if [ $resto -eq 1 ];then
    dia=lunes
elif [ $resto -eq 2 ];then
    dia=martes
elif [ $resto -eq 3 ];then
    dia=miercoles
elif [ $resto -eq 4 ];then
    dia=jueves
elif [ $resto -eq 5 ];then
    dia=viernes
elif [ $resto -eq 6 ];then
    dia=sabado
elif [ $resto -eq 0 ];then
    dia=domingo
fi
break
done
echo "Es $dia"