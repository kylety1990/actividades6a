read -p "introduce la cantidad de litros consumidos: " litros
precio=0
diferencia=0
while [ $litros -lt 0 ];do
read -p "introduce la cantidad de litros consumidos: " litros
done
while [ $litros -ge 0 ];do
if [ $litros -ge 0 ] && [ $litros -lt 50 ] ;then 
    precio=20
    break 
elif [ $litros -ge 50 ] && [ $litros -lt 200 ];then
    diferencia=$(echo "scale=2; $litros - 50" | bc)
    multiplicacion=$(echo "scale=2; $diferencia * 0.2" | bc)
    precio=$(echo "scale=2; $multiplicacion + 20" | bc)
    break
elif [ $litros -ge 200 ];then
    diferencia=$(echo "scale=2; $litros -200" | bc)
    multiplicacion=$(echo "scale=2; $diferencia * 0.1" | bc)
    precio=$(echo "scale=2; $multiplicacion + 50" | bc)
    break

fi
done
 echo "El precio de tu factura es $precio €"