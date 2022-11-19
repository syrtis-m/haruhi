INCLUDE config.ink //use this at the beginning of files to include EXTERNAL function definitions

EXTERNAL setStoryVar(key, value) //key is string, value is bool
EXTERNAL getStoryVar(key) //key is string

hey bud, you're stuck in a time loop
if you touch something, you reset
* ["what?? who's talking"] //asterisk is a branch
    don't worry about it
* ["..okay"]
    yeah it sucks
- //the dash is a gather, takes you back from the branching dialog

~ setStoryVar("started", true) //run external func
VAR started = "" //define global variable
~ started = getStoryVar("started") //call external func
