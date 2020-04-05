#!/bin/bash
declare -A answer
read -p "Enter first number : " a
read -p "Enter second number : " b
read -p "Enter third number : " c
answer[" $a+$b*$c "]=$((a+b*c))
answer[" $a*$b+$c "]=$((a*b+c))
answer[" $c+$a/$b "]=$((c+a/b))
answer[" $a%$b+$c "]=$((a%b+c))
echo "Expression "${!answer[@]}
echo "Result stored in Dictionary : "${answer[@]}
function Array()
{
        DictToArray=("${answer[*]}")
        echo "array ; " ${DictToArray[*]}
}
function AscendingSort(){
		Ascending=($(echo ${DictToArray[*]}| tr ' ' '\n' |sort -r))
		echo "Ascending sort : ${Ascending[*]}"
		
}
Array
DescendingSort
