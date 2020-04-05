#!/bin/bash
read -p "Enter first number : " a
read -p "Enter second number : " b
read -p "Enter third number : " c
declare -A answer
answer[" $a+$b*$c "]=$((a+b*c))
answer[" $a*$b+$c "]=$((a*b+c))
answer[" $c+$a/$b "]=$((c+a/b))
answer[" $a%$b+$c "]=$((a%b+c))
echo "Expression "${!answer[@]}
echo "Result stored in Dictionary : "${answer[@]}
