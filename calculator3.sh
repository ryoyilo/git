#!/bin/bash

# ユーザーに2つの数値を入力してもらう
echo "Enter two numbers:"
read num1
read num2

# ユーザーに演算子を入力してもらう
echo "Choose an arithmetic operation (+, -, *, /):"
read operator

# エラーチェックと演算の実行
if ! [[ "$num1" =~ ^[0-9]+$ ]] || ! [[ "$num2" =~ ^[0-9]+$ ]]; then
  echo "Invalid input. Please enter valid numbers."
elif [ "$operator" != "+" ] && [ "$operator" != "-" ] && [ "$operator" != "*" ] && [ "$operator" != "/" ]; then
  echo "Invalid operator. Please choose +, -, *, or /."
elif [ "$operator" == "/" ] && [ "$num2" -eq 0 ]; then
  echo "Division by zero is not allowed."
else
  case "$operator" in
    "+")
      result=$((num1 + num2))
      ;;
    "-")
      result=$((num1 - num2))
      ;;
    "*")
      result=$((num1 * num2))
      ;;
    "/")
      result=$((num1 / num2))
      ;;
  esac
  echo "The result: $result"
fi
            