=== office_computer ===
//came from library note
//hint boiler door password
//hint power fix

you shake the mouse to wake the computer up
-> menu

= menu
+ [EMAIL]
    ->email
+ [FILES]
    ->files
+ [turn the computer off]
    -> done

= email
+ [fwd:weekly update]
   "lol we're yeaaars away from selectivly looping organs, let alone cells. i've told them and mgmt just doesn't listen. they keep trying to convince me that water-cooling the time loop system will make it work." 
    ->email
+ [weekly update]
    "Good work this week everyone!<br>This week we successfully looped someone without looping the world. Selective looping, if we can get even more selective, may prove to unlock the keys to a second medical revolution.<br>Thanks,<br>mgmt"
    ->email
+ [done]
    -> menu

= files
+ [generator manual.pdf]
    the generator room password is "INK"
    you think you can fix the electrical system for the time loop machine - or at least the generators.
    ~ generator_info = setStoryVar("generator_info", true)
    ->files
+ [data.csv]
    ...there's no headers. who did this.
    ->files
+ [done]
    -> menu


= done
~ timeloop()
-> DONE