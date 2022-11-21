=== door_generators ===

~ door_generators_toggle = getStoryVar("door_generators_toggle") //check in the update loop for ink_door.cs if the variable changes. when it does, remove the gameobject in the prefab that does the color behind the door, and turn off the collider

the door's locked. maybe try a password?
+ [MANUSCRIPT]
    nothing happens
    ->done_loop
+ [PARCHMENT]
    nothing happens
    ->done_loop
+ [INK]
    with a clunk, the door opens
    ~ setStoryVar("door_generators_toggle", true)
    ->done_loop
+ [back]
    ->DONE

=done_loop
~timeloop()
->DONE