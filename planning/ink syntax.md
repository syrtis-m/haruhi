EXTERNAL setStoryVar(key, value) //key is string, value is bool
EXTERNAL getStoryVar(key) //key is string

hey bud, you're stuck in a time loop
if you touch something, you reset
* ["what?? who's talking"]
    don't worry about it
* ["..okay"]
    yeah it sucks

~ setStoryVar("started", true) //run external func
VAR started = "" //define global variable
~ started = getStoryVar("started") //call external func
