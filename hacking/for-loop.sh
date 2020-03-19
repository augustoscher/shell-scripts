#!/bin/bash
for i in {1..99}
do
   (($i%2==1)) && echo $i
done
