#!/bin/bash

# ユーザーに数値を入力してもらう
echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

# ユーザーにどの演算を行うか選択してもらう
echo "Select an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

read choice

# 選択した演算に応じて計算を行う
case $choice in
  1)
    result=$((num1 + num2))
    operator="+"
    ;;
  2)
    result=$((num1 - num2))
    operator="-"
    ;;
  3)
    result=$((num1 * num2))
    operator="*"
    ;;
  4)
    if [ $num2 -eq 0 ]; then
      echo "Division by zero is not allowed."
      exit 1
    fi
    result=$(echo "scale=2; $num1 / $num2" | bc)
    operator="/"
    ;;
  *)
    echo "Invalid choice."
    exit 1
    ;;
esac

# 結果を表示
echo "Result: $num1 $operator $num2 = $result"
