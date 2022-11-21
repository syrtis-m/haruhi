=== door_storage ===
~ door_storage_toggle = getStoryVar("door_storage_toggle")
//answer is volta

the door's locked. maybe try a password?
+ [NAPOLEON]
    nothing happens
    ->done_loop
+ [VOLTAIRE]
    nothing happens
    ->done_loop
+ [VOLTA]
    with a clunk, the door opens
    ~ setStoryVar("door_storage_toggle", true)
    ->done_loop
+ [back]
    ->DONE

=done_loop
~timeloop()
->DONE
