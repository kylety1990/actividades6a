read -p "Introduce un numero mayor de 0: " numero
resto=`expr $numero % 2`
final=esperar
while [ $numero -lt 0 ];do
    echo "dato erroneo"
    read -p "Introduce un numero mayor de 0: " numero  
done
while [ $numero -gt 0 ];do 
    if [ $resto -eq 0 ];then 
	final=par
	break
    else 
	final=impar
	break
fi
done
echo "el numero es $final"