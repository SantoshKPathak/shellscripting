#!/bin/bash
function greeting (){
    echo "Hello $1 $2"
    now
    echo "How are you doing?"
}
now(){
    echo "Today date is $(date +%F)"
    echo "Time is $(date +%r)" 
    echo "Time is $(date)"  
}
greeting Santosh Pathak