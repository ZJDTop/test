#!/bin/bash

#判断闰年
isleap()
{
 year=$1
 num1=$[$year%4]
 num2=$[$year%100]
 num3=$[$year%400]
 d=$[$[$[$num1==0]&&$[$num2!=0]]||$[$num3==0]]
 
 if test $d == 1
 then
   return 1
 else
   return 2
 fi

}
isleap $1
if test $? == 1
then
 echo "$year 是闰年"
else
 echo "$year 不是闰年"
fi
