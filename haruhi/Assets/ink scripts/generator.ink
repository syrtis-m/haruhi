=== generator ===

~ pipes_toggle = getStoryVar("pipes_toggle")
~ generator_info = getStoryVar("generator_info")
~ endgame_power = getStoryVar("endgame_power")


you take a look at the generator.
{
- endgame_power:
    ->already_fixed
- generator_info:
    ->has_generator_info
- else:
    ->no_generator_info
}

= has_generator_info
oh yeah, that's an easy fix.
...
you were able to fix the generator. it should provide power to the converters now.
~ setStoryVar("pipes_toggle", true)
~ setStoryVar("endgame_power", true)
->check_end


= no_generator_info
yeaaahhhh, you don't think you can fix that without getting more info. maybe someone's computer will have a manual?
-> done

=already_fixed
the generator's working fine
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



=== generator_note ===
a sticky note on the wall reads "spare parts - > storage rm 2. pswd radiation"
-> DONE