read -p "introduce un numero: " n1
read -p "introduce un numero: " n2
valor1=0
valor2=0
if [ $n1 -eq $n2 ]; then
    valor1=iguales
    echo "son $valor1 "
else 
    valor1=diferentes
    if [ $n1 -gt $n2 ];then
	valor2=$n1
	echo " Son $valor1 y el  valor $valor2 es mayor" 
else
	valor2=$n2
	echo "Son $valor1 y el valor $valor2 es mayor"
	fi
fi