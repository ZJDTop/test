#!/bin/bash

func()
{ num1=$1
  num2=$2
  return $[($num1+$num2)]
}
func $1 $2
echo "$num1 + $num2 = $?"
