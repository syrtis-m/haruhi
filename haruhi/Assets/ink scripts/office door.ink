INCLUDE config.ink

VAR door_office = ""
~ door_office = getStoryVar("door_office") //check in the update loop for ink_door.cs if the variable changes. when it does, remove the gameobject in the prefab that does the color behind the door, and turn off the collider

the door's locked. maybe try a password?
+ [MELODIC OCTOPUS]
    nothing happens
+ [WHITE ELEPHANT]
    with a clunk, the door opens
    ~ setStoryVar("door_office", true)
+ [SOLID SNAKE]
    nothing happens
- ~ timeloop()

->END