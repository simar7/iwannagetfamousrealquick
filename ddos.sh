#!/bin/bash
while true; do
    
    PAGELINK0="http://samstechlife.blogspot.ca/"

    PAGELINK1="http://samstechlife.blogspot.ca/2013/02/hey-readers-thanks-for-visiting-my-blog.html"

    PAGELINK2="http://samstechlife.blogspot.ca/2013/02/a-blast-from-past.html"

    PAGELINK3="http://samstechlife.blogspot.ca/2013/02/back2school.html"

    PAGELINK4="http://samstechlife.blogspot.ca/2013/02/finally-found-my-segway-out-of-boredom.html"

    PAGELINK5="http://samstechlife.blogspot.ca/2013/03/its-never-wrong-time-to-blog-co-op-fun.html"

    PAGELINK6="http://samstechlife.blogspot.ca/2013/03/sleep-deprived-8.html"

    PAGELINK7="http://samstechlife.blogspot.ca/2013/03/random-s-from-waterloo.html"

    PAGELINK8="http://samstechlife.blogspot.ca/2013/03/the-day-waterloo-bridge-fell-down.html"

    PAGELINK9="http://samstechlife.blogspot.ca/2013/03/post-10-best-shower-ever.html"

    PAGELINK10="http://samstechlife.blogspot.ca/2013/03/the-jump-from-high-school-to-university.html"

    PAGELINK11="http://www.blogger.com/profile/04686134081150043164"

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

    #firefox samstechlife.blogspot.ca &
    #pkill firefox;
    
    #lynx -useragent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.79 Safari/537.1" samstechlife.blogpsot.ca & 
    #pkill firefox;
    #pkill lynx;
    
done
