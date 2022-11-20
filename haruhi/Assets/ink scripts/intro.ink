INCLUDE config.ink

VAR started = ""
~ started = getStoryVar("started")

there's a note laying near you on the floor
+ [pick it up]
    it's in your handwriting.
    "TOP 3 REASONS YOU MAY BE IN A TIME LOOP:" 
    "1. You don't remember how you got here. <br>2. you find yourself where you woke up if you touch anything. <br>3. somebody went through your office and hid everything"
    you might be in a time loop
    ~ timeloop()
    ~ setStoryVar("started", true)
+ {started} [skip it]
    ~ setStoryVar("started", true)

->END