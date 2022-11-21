=== door_storage ===
~ door_storage_toggle = getStoryVar("door_storage_toggle")
//answer is volta

the door's locked. maybe try a password?
+ [NAPOLEON]
    nothing happens
+ [VOLTAIRE]
    nothing happens
+ [VOLTA]
    with a clunk, the door opens
    ~ setStoryVar("door_storage_toggle", true)
    
- ~ timeloop()

-> DONE