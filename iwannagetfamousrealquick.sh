#!/bin/bash
while true; do
    
    PAGELINK0=""

    PAGELINK1=""

    PAGELINK2=""

    PAGELINK3=""

    PAGELINK4=""

    PAGELINK5=""

    PAGELINK6=""

    PAGELINK7=""

    PAGELINK8=""

    PAGELINK9=""

    PAGELINK10=""

    PAGELINK11=""

    COUNTER=0;

    ## declare an array variable
    declare -a arr=($PAGELINK0 $PAGELINK1 $PAGELINK2 $PAGELINK3 $PAGELINK4 $PAGELINK5 $PAGELINK6 $PAGELINK7 $PAGELINK8 $PAGELINK9 $PAGELINK10 $PAGELINK11)

    ## now loop through the above array
    for i in ${arr[@]}
    do
           lynx $i &
           sleep 1;
    done

    # You can access them using echo ${arr[0]}, ${arr[1]} also


    pkill lynx # killing it outside so pages can live longer..
    
    # Now let's do the same thing with firefox, so to avoid pageview lockdown..
  
    for i in ${arr[@]}
    do
        firefox $i &
        sleep 3; # bit longer since FF takes time to load...
    done

    # make sure you get the wmctrl package and also not have Chrome running
    # in the background since this command will also kill Chrome.. :(
    wmctrl -c Firefox # graceful exit :) 

    sleep 5; # long sleep after everything is done...

done
