=== door_storage1 ===


the door's locked. maybe try a password?
+ [RADIUM]
    with a clunk, the door opens
    ~ setStoryVar("door_storage1_toggle", true)
    ->done_loop
+ [BISMUTH]
    nothing happens
    ->done_loop
+ [SELENIUM]
    nothing happens
    ->done_loop
+ [back]
    ->DONE

=done_loop
~timeloop()
->DONE