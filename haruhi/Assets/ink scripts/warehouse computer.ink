//coming from storage room door
//going to library backroom. hint password
//hint towards computer config info.

=== warehouse_computer ===

there's a computer on the floor. it's unplugged.
you plug the computer in.

-> diceroll

= diceroll

~ temp dice_roll = RANDOM(1, 6)

{
- dice_roll >= 3:
    -> diceroll_success
- else:
    -> diceroll_failure
}

= diceroll_success
"..." it boots successfully.
->menu

= diceroll_failure
"..." it fails to boot.
+ [try again]
    ->diceroll
+ [give up]
    ->done

= menu
+ [EMAIL]
    ->email
+ [FILES]
    ->files
+ [turn the computer off]
    -> done

= email
+ [re:re: testing]
    "no, we can't submerge the time loop device. don't do it. it's not going to result in anything good."
    ->email
+ [weekly update]
    "Good work this week everyone!<br>This week we successfully looped someone without looping the world. Selective looping, if we can get even more selective, may prove to unlock the keys to a second medical revolution.<br>Thanks,<br>mgmt"
    ->email
+ [done]
    -> menu

= files
+ [library rethink.txt]
    "- storing config info for time loop servers on hardcopy in backroom<br>- data rot problem: investigate electronic deities<br>- password: mathematician theme"
    ->files
+ [finances.xlxs]
    oh. oh no. that's not good. oh, jeez.
    ->files
+ [done]
    -> menu
    
= done
~ timeloop()
-> DONE