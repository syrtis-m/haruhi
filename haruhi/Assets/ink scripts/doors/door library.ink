=== door_library ===
//mathematician password

the door's locked. maybe try a password?
+ [JOYCE]
    nothing happens
+ [SHELLY]
    nothing happens
+ [EULER]
    with a clunk, the door opens
    ~ setStoryVar("door_library_toggle", true)
    
- ~ timeloop()

-> DONE
