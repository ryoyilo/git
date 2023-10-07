echo "Entet two number:"
read num1
read num2
echo "Choose an arithmetic operation(+, -, *, ,/):"
read operation
echo "The result: $(($num1 $operation $num2))"
