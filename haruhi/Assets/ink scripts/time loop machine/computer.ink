=== time_machine_computer ===
~ computer_fixable = getStoryVar("computer_fixable")
~ endgame_computer = getStoryVar("endgame_computer")


you take a look at the computer
{
- endgame_computer:
    ->already_fixed
- computer_fixable:
    ->info
- else:
    ->no_info
}

=info
you have the config info, you can fix this.
...
yup, looks like the computer is working fine now.
~setStoryVar("time_machine_computer_toggle",true)
~setStoryVar("endgame_computer",true)
->check_end

=no_info
you probably should know the config information before you try to fix the computer
->done

=already_fixed
the computer's humming quietly
->done

= check_end
~endgame_power = getStoryVar("endgame_power")
~endgame_computer = getStoryVar("endgame_computer")
~endgame_transmitter = getStoryVar("endgame_transmitter")
{
- endgame_power && endgame_computer && endgame_transmitter:
    -> endgame
- else:
    -> done_loop
}


=done_loop
~timeloop()
->DONE

=done
->DONE
