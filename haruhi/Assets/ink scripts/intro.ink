INCLUDE config.ink

VAR started = ""
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

->END