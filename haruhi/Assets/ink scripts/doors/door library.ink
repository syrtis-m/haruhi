=== door_library ===
//mathematician password

the door's locked. maybe try a password?
+ [JOYCE]
    nothing happens
    ->done_loop
+ [SHELLY]
    nothing happens
    ->done_loop
+ [EULER]
    with a clunk, the door opens
    ~ setStoryVar("door_library_toggle", true)
    ->done_loop
+ [back]
    ->DONE

=done_loop
~timeloop()
->DONE