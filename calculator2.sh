#!/bin/bash

# ユーザーに2つの数値を入力してもらう
echo "Enter two numbers:"
read num1
read num2

# 演算子を入力してもらう
echo "Choose an arithmetic operation (+, -, *, /):"
read operation

# 演算を実行して結果を表示する関数
calculate() {
  local result
  case $operation in
    +)
      result=$(echo "$1 + $2" | bc)
      ;;
    -)
      result=$(echo "$1 - $2" | bc)
      ;;
    *)
      result="Invalid operator"
      ;;
  esac
  echo "The result:$result"
}

# ゼロ除算を避けるために、割り算の場合の分岐
if [ "$operation" == "/" ]; then
  if [ "$num2" -eq 0 ]; then
    echo "Division by zero is not allowed."
  else
    calculate "$num1" "$num2"
  fi
else
  calculate "$num1" "$num2"
fi

