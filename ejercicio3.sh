read -p "Introduce una nota, debe ser entre 0 y 10: " nota
media=esperar
acabar=acabar
while [ $nota -lt 0 ];do 
    echo " nota erronea"
    read -p "Introduce una nota, debe ser entre 0 y 10: " nota
done
while [ $nota -ge 0 ];do
if [ $nota -ge 0 ] && [ $nota -lt 5 ]; then
    media=suspendido
    break
elif [ $nota -ge 5 ] && [ $nota -lt 6 ];then 
    media=aprobado
    break
elif [ $nota -ge 6 ] && [ $nota -lt 7 ]; then 
    media=bien
    break
elif [  $nota -ge 7 ] && [ $nota -lt 9 ]; then
    media=notable
    break
elif [  $nota -ge 9 ] && [ $nota -le 10 ]; then
    media=sobresaliente
    break
fi
done
echo "El alumno ha sacado un $media y ha sacado un $nota"
