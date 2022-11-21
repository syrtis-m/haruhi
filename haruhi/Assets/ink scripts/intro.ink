VAR started = ""
VAR library_note = ""
VAR machine_manual = ""
VAR time_machine_computer_on = ""
VAR door_office_toggle = ""
VAR door_library_toggle = ""
VAR door_generators_toggle = ""
VAR door_storage_toggle = ""
VAR door_storage1_toggle = ""

EXTERNAL setStoryVar(key, value) //key is string, value is bool
EXTERNAL getStoryVar(key) //key is string
EXTERNAL timeloop() //invokes main.timeloop event/action


INCLUDE doors/door generators.ink
INCLUDE doors/door library.ink
INCLUDE doors/door storage.ink
INCLUDE doors/door storage1.ink
INCLUDE doors/office door.ink
INCLUDE time loop machine/computer.ink
INCLUDE time loop machine/manual.ink
INCLUDE time loop machine/power source.ink
INCLUDE time loop machine/transmitter.ink
INCLUDE boiler.ink
INCLUDE warehouse note.ink
INCLUDE hidden library note.ink
INCLUDE warehouse computer.ink
INCLUDE machine workroom.ink
INCLUDE library backroom note.ink
INCLUDE office computer.ink
INCLUDE computer rand office.ink


=== intro ===

~ started = getStoryVar("started")

there's a note laying near you on the floor
+ [pick it up]
    it's in your handwriting.
    "TOP 3 REASONS YOU MAY BE IN A TIME LOOP:" 
    "1. You don't remember how you got here. <br>2. when you touch something, you reset. <br>3. somebody went through your offices and hid everything"
    you might be in a time loop
    ~ timeloop()
    ~ setStoryVar("started", true)
+ {started} [skip it]
    ~ setStoryVar("started", true)
-
-> DONE